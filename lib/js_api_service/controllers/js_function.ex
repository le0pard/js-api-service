defmodule JsApiService.Controllers.JsFunction do
  use Phoenix.Controller

  def run(conn, %{"function" => js_function, "data" => js_data}) do
    response = case JsApiService.ErlangV8.eval_function({:global, :main}, js_function, [js_data]) do
      {status, data} -> [{:status, status}, {:result, data}]
    end
    {:ok, json_response} = JSEX.encode response
    json conn, json_response
  end
end
