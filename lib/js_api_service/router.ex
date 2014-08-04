defmodule JsApiService.Router do
  use Phoenix.Router

  plug Plug.Static, at: "/static", from: :js_api_service

  post "/run", JsApiService.JsFunctionController, :run, as: :js_function_run
  get "/", JsApiService.PageController, :index, as: :page

end
