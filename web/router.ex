defmodule JsApiService.Router do
  use JsApiService.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  post "/run", JsApiService.JsFunctionController, :run, as: :js_function_run

  scope "/", JsApiService do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", JsApiService do
  #   pipe_through :api
  # end
end
