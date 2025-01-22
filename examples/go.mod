module github.com/opentracing-contrib/goredis/examples

go 1.12

replace github.com/opentracing-contrib/goredis => ../

replace github.com/opentracing-contrib/echo => github.com/opentracing-lib/echo v0.0.0-20190807081036-673d4a7607b1

require (
	github.com/codahale/hdrhistogram v0.0.0-20161010025455-3a0bb77429bd // indirect
	github.com/go-redis/redis v6.15.3+incompatible
	github.com/labstack/echo/v4 v4.9.0
	github.com/opentracing-contrib/echo v0.0.0-00010101000000-000000000000
	github.com/opentracing-contrib/goredis v0.0.0-00010101000000-000000000000
	github.com/opentracing/opentracing-go v1.1.0
	github.com/pkg/errors v0.8.1 // indirect
	github.com/uber-go/atomic v1.4.0 // indirect
	github.com/uber/jaeger-client-go v2.16.0+incompatible
	github.com/uber/jaeger-lib v2.0.0+incompatible // indirect
	go.uber.org/atomic v1.4.0 // indirect
)
