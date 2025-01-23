module github.com/opentracing-contrib/goredis/examples

go 1.22.11

toolchain go1.23.5

replace github.com/opentracing-contrib/goredis => ../

replace github.com/opentracing-contrib/echo => github.com/opentracing-lib/echo v0.0.0-20250122030754-f79ab662ab1e

require (
	github.com/go-redis/redis v6.15.9+incompatible
	github.com/labstack/echo/v4 v4.13.3
	github.com/opentracing-contrib/echo v0.0.0-20250122030754-f79ab662ab1e
	github.com/opentracing-contrib/goredis v0.0.0-20250122173756-3ab3fb05c883
	github.com/opentracing/opentracing-go v1.2.0
	github.com/uber/jaeger-client-go v2.16.0+incompatible
)

require (
	github.com/codahale/hdrhistogram v0.0.0-20161010025455-3a0bb77429bd // indirect
	github.com/google/go-cmp v0.6.0 // indirect
	github.com/labstack/gommon v0.4.2 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	github.com/nxadm/tail v1.4.11 // indirect
	github.com/pkg/errors v0.8.1 // indirect
	github.com/uber-go/atomic v1.4.0 // indirect
	github.com/uber/jaeger-lib v2.0.0+incompatible // indirect
	github.com/valyala/bytebufferpool v1.0.0 // indirect
	github.com/valyala/fasttemplate v1.2.2 // indirect
	golang.org/x/crypto v0.31.0 // indirect
	golang.org/x/net v0.33.0 // indirect
	golang.org/x/sys v0.28.0 // indirect
	golang.org/x/text v0.21.0 // indirect
)
