use Mix.Config

config :lager,
  handlers: [
    lager_console_backend: [:info, {:lager_default_formatter, [:time, ' [', :severity, '] ', :message, '\n']}]
  ],
  crash_log: :undefined,
  error_logger_hwm: 150

config :stout,
  truncation_size: 4096,
  level: :info

import_config "#{Mix.env}.exs"