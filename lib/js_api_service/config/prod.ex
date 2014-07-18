defmodule JsApiService.Config.Prod do
  use JsApiService.Config

  config :router, port: System.get_env("PORT") || 4000,
                  ssl: false,
                  # Full error reports are disabled
                  consider_all_requests_local: false
                  # ip: {0, 0, 0, 0}

  config :plugs, code_reload: false

  config :logger, level: :error
end


