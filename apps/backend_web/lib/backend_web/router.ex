defmodule Tachikoma.Web.Router do
  use Tachikoma.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Tachikoma.Web do
    pipe_through :api
  end
end
