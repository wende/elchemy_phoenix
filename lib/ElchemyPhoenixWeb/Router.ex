defmodule ElchemyPhoenixWeb.Router do
  use ElchemyPhoenixWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RoadmapWeb do
    pipe_through :api
  end
end
