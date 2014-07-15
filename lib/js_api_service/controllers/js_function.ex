defmodule JsApiService.Controllers.JsFunction do
  use Phoenix.Controller

  def run(conn, _params) do
    response = case JsApiService.ErlangV8.eval_function({:global, :main}, "return data;", ["asdasdadsa"]) do
      {status_text, data} -> [{:status, status_text}, {:result, data}]
    end
    {:ok, json_response} = JSEX.encode response
    json conn, json_response
  end
end
