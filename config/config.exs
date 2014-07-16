use Mix.Config

config :stout,
  truncation_size: 4096,
  level: :info

config :exlager,
  level: :debug,
  truncation_size: 8096

config :elixir_v8,
  pools: [
    main: [
      {:size, 10},
      {:max_overflow, 10}
    ]
  ]

import_config "#{Mix.env}.exs"