use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :js_api_service, JsApiService.Endpoint,
  secret_key_base: "njo80an6zFU8zSwCagQVX2mU5BLvYHv31wcua8FF8YWYWC68pKAn/ZraRw4KjRwO"

# Configure your database
config :js_api_service, JsApiService.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "js_api_service_prod",
  size: 20 # The amount of database connections in the pool
