# JsApiService

To start your new Phoenix application you have to:

1. Install dependencies with `mix deps.get`
2. Start Phoenix router with `mix phoenix.start`

Now you can visit `localhost:4000` from your browser.

## Production

```shell
MIX_ENV=prod mix compile.protocols
MIX_ENV=prod PORT=4000 elixir -pa _build/prod/consolidated -S mix phoenix.start
```


## Notes

* If you choose to change the application's structure, you could manually start the router from your code like this `JsApiService.Router.start`
