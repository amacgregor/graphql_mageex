defmodule MageexWeb.Router do
  use MageexWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MageexWeb do
    pipe_through :api
  end
end
