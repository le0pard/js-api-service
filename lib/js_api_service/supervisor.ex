defmodule JsApiService.Supervisor do
  use Supervisor

  def start_link do
    :supervisor.start_link(__MODULE__, [])
  end

  def init([]) do
    v8_pool = [
      main: [{:size, 20}, {:max_overflow, 5}]
    ]

    children = [
      supervisor(JsApiService.ErlangV8.Supervisor, [])
    ]
    # See http://elixir-lang.org/docs/stable/Supervisor.Behaviour.html
    # for other strategies and supported options
    supervise(children, strategy: :one_for_one)
  end
end
