defmodule JsApiService.Router do
  use Phoenix.Router

  plug Plug.Static, at: "/static", from: :js_api_service
  post "/run", JsApiService.Controllers.JsRun, :index, as: :js_run
  get "/", JsApiService.Controllers.Pages, :index, as: :page
end
