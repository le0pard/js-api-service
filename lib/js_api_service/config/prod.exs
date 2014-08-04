use Mix.Config

config :phoenix, JsApiService.Router,
  port: System.get_env("PORT"),
  ssl: false,
  code_reload: false,
  cookies: true,
  session_key: "_js_api_service_key",
  session_secret: "123123123dsfasdasdaQEOJWKLJDMKLASKLMDLMKAKLJSDKLJAKLSDASDasdasd"

config :phoenix, :logger,
  level: :error
