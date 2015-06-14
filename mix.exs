defmodule JsApiService.Mixfile do
  use Mix.Project

  def project do
    [app: :js_api_service,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {JsApiService, []},
     applications: [:phoenix, :phoenix_html, :cowboy, :logger,
                    :phoenix_ecto, :postgrex, :exjsx, :elixir_v8]]
  end

  # Specifies which paths to compile per environment
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "~> 0.13.1"},
     {:phoenix_ecto, "~> 0.4"},
     {:postgrex, ">= 0.0.0"},
     {:phoenix_html, "~> 1.0"},
     {:phoenix_live_reload, "~> 0.4", only: :dev},
     {:cowboy, "~> 1.0"},
     {:poolboy, github: "devinus/poolboy", override: true},
     {:elixir_v8, github: "le0pard/elixir_v8"},
     {:exjsx, github: "talentdeficit/jsex"},
     {:exrm, "~> 0.17"},
     {:relx, github: "erlware/relx"}]
  end
end
