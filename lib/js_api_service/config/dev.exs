use Mix.Config

config :phoenix, JsApiService.Router,
  port: System.get_env("PORT") || 4000,
  ssl: false,
  code_reload: true,
  cookies: true,
  consider_all_requests_local: true,
  session_key: "_js_api_service_key",
  session_secret: "123123123dsfasdasdaQEOJWKLJDMKLASKLMDLMKAKLJSDKLJAKLSDASDasdasd"

config :phoenix, :logger,
  level: :debug