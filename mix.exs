defmodule JsApiService.Mixfile do
  use Mix.Project

  def project do
    [ app: :js_api_service,
      version: "0.1.0",
      elixir: "~> 0.14.2",
      deps: deps ] ++ options(Mix.env)
  end

  # Configuration for the OTP application
  def application do
    [
      mod: { JsApiService, [] },
      applications: [:phoenix, :kernel, :stdlib, :exlager, :erlang_v8]
    ]
  end

  defp options(env) when env in [:dev, :test] do
    [exlager_level: :debug, exlager_truncation_size: 8096]
  end

  defp options(:prod) do
    [exlager_level: :warning, exlager_truncation_size: 104857600 * 5]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [
      { :phoenix, "0.3.1" },
      { :cowboy, "~> 0.10.0", github: "extend/cowboy", optional: true },
      { :poolboy, github: "devinus/poolboy" },
      { :exlager, github: "khia/exlager" },
      { :erlang_v8, github: "strange/erlang-v8" },
      { :jsex, github: "talentdeficit/jsex" }
    ]
  end
end
