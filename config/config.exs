# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :js_api_service, JsApiService.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "u7RDpv4HhtwuRbSmbKI+XvNgTvkThMN6ZPfDok4VdOT0fX0ukMvWTEupCU69G7S6",
  debug_errors: false,
  pubsub: [name: JsApiService.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]


js_underscore_lib = Mix.Project.app_path <> "/priv/underscore.js"

config :elixir_v8,
  pools: [
    main: [
      {:size, 10},
      {:max_overflow, 10},
      {:file, js_underscore_lib}
    ]
  ]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
