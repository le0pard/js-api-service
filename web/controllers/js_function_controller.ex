defmodule JsApiService.JsFunctionController do
  use JsApiService.Web, :controller

  plug :action

  def run(conn, %{"function" => js_function, "data" => js_data}) when is_binary(js_function) and is_binary(js_data) do
    { status, data } = ElixirV8.eval_function({:global, :main}, js_function, [js_data])
    { :ok, json_response } = JSX.encode([{ :status, status }, { :result, data }])
    json conn, json_response
  end

  def run(conn, _params) do
    { :ok, json_response } = JSX.encode([{ :status, :error }, { :result, "You must provide `function` and `data` in POST params" }])
    json conn, json_response
  end
end
