package main

import (
	"github.com/go-redis/redis"
	"github.com/labstack/echo/v4"
	apmecho "github.com/opentracing-contrib/echo"
	"github.com/opentracing-contrib/goredis/examples/tracer"
	apmgoredis "github.com/opentracing-contrib/goredis"
	"github.com/opentracing/opentracing-go"
	"net/http"
	"os"
)

const (
	DefaultComponentName = "goredis-demo"
)

func main() {

	flag := os.Getenv("JAEGER_ENABLED")
	if flag == "true" {
		// 1. init tracer
		tracer, closer := tracer.Init(DefaultComponentName)
		if closer != nil {
			defer closer.Close()
		}
		// 2. ste the global tracer
		if tracer != nil {
			opentracing.SetGlobalTracer(tracer)
		}
	}

	e := echo.New()

	if flag == "true" {
		// 3. use the middleware
		e.Use(apmecho.Middleware(DefaultComponentName))
	}

	rdb := redis.NewUniversalClient(&redis.UniversalOptions{
		Addrs: []string{"127.0.0.1:6379"},
		DB:    0,
	})
	defer rdb.Close()

	e.GET("/", func(c echo.Context) error {
		rdb = apmgoredis.Wrap(rdb).WithContext(c.Request().Context())
		rdb.Ping()
		return c.String(http.StatusOK, "Hello, World!")
	})

	e.GET("/hello", func(c echo.Context) error {
		rdb = apmgoredis.Wrap(rdb).WithContext(c.Request().Context())
		rdb.Set("data", "world", 1000000) //1ms
		data := rdb.Get("data").String()

		return c.String(http.StatusOK, data)
	})

	e.Logger.Fatal(e.Start(":1323"))
}
