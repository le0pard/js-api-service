defmodule JsApiService do
  use Application

  # See http://elixir-lang.org/docs/stable/Application.Behaviour.html
  # for more information on OTP Applications
  def start(_type, _args) do
    JsApiService.Supervisor.start_link
  end

  def main(_args) do
    #:erlang.set_cookie(node(), String.to_atom ReflectorioWorker.Configuration.get_key("erlang")["cookies"])
    #parse_args(args) |> process_args
    JsApiService.Router.start
    :timer.sleep(:infinity)
  end
end
