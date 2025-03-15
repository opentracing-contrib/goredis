# goredis

A middleware for goredis to use OpenTracing

```go
import (
  "net/http"

  "github.com/go-redis/redis"

  apmgoredis "github.com/opentracing-contrib/goredis"
)

var redisClient *redis.Client // initialized at program startup

func handleRequest(w http.ResponseWriter, req *http.Request) {
  // Wrap and bind redisClient to the request context. If the HTTP
  // server is instrumented with Elastic APM (e.g. with apmhttp),
  // Redis commands will be reported as spans within the request's
  // transaction.
  client := apmgoredis.Wrap(redisClient).WithContext(req.Context())
  ...
}
```

Example: [goredis-example](./examples)

![GoRedis Example 1](./examples/imgs/img1.jpg)

![GoRedis Example 2](./examples/imgs/img2.jpg)
