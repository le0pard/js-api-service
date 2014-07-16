defmodule JsApiService.Controllers.JsFunction do
  use Phoenix.Controller

  def run(conn, %{"function" => js_function, "data" => js_data}) when is_binary(js_function) and is_binary(js_data) do
    response = case JsApiService.ErlangV8.eval_function({:global, :main}, js_function, [js_data]) do
      {status, data} -> [{:status, status}, {:result, data}]
    end
    {:ok, json_response} = JSEX.encode response
    json conn, json_response
  end

  def run(conn, _params) do
    {:ok, json_response} = JSEX.encode([{:status, :error}, {:result, "You must provide `function` and `data` in POST params"}])
    json conn, json_response
  end
end
