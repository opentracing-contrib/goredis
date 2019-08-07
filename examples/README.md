
1. start jaeger
```shell script
docker run -d --name jaeger \
  -e COLLECTOR_ZIPKIN_HTTP_PORT=9411 \
  -p 5775:5775/udp \
  -p 6831:6831/udp \
  -p 6832:6832/udp \
  -p 5778:5778 \
  -p 16686:16686 \
  -p 14268:14268 \
  -p 9411:9411 \
  jaegertracing/all-in-one:1.13

```

2. start redis

```shell script
docker run -d --name redis -p 6379:6379 redis
```

3. set env 
```shell script
export JAEGER_AGENT_HOST=localhost
export JAEGER_AGENT_PORT=6831
export JAEGER_ENABLED=true
```

4. run example
```shell script
go run server.go
```

5. call the server
```shell script
curl http://localhost:1323/hello
```
