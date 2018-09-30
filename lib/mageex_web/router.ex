defmodule MageexWeb.Router do
  use MageexWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MageexWeb do
    pipe_through :api
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql",
            Absinthe.Plug.GraphiQL,
            schema: MageexWeb.Schema,
            interface: :simple,
            context: %{pubsub: MageexWeb.Endpoint}
  end
end
