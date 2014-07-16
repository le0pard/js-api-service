use Mix.Config

config :stout,
  truncation_size: 4096,
  level: :info

config :exlager,
  level: :debug,
  truncation_size: 8096

js_undescore_lib = Mix.Project.app_path <> "/priv/underscore-min.js"

config :elixir_v8,
  pools: [
    main: [
      {:size, 10},
      {:max_overflow, 10},
      {:file, js_undescore_lib}
    ]
  ]

import_config "#{Mix.env}.exs"