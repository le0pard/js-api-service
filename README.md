# JsApiService

To start your new Phoenix application:

1. Install dependencies with `mix deps.get`
2. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit `localhost:4000` from your browser.

## Test JS engine

```bash
$ curl -X POST -d "function=return _.map(JSON.parse(data), function(num){ return num * 25; });&data=[1,2,3,5,6,7,8,9,10]" http://127.0.0.1:4000/run

"{\"status\":\"ok\",\"result\":[25,50,75,125,150,175,200,225,250]}"
```
