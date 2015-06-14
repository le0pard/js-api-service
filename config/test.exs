use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :js_api_service, JsApiService.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :js_api_service, JsApiService.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "js_api_service_test",
  size: 1 # Use a single connection for transactional tests
