defmodule TodoListWeb.Router do
  use TodoListWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TodoListWeb do
    pipe_through :api
    #Routes for user
    resources "/users", UserController, except: [:new, :edit]
    #Routes for task
    resources "/tasks", TaskController, except: [:new, :edit]
    get "/tasks/users/:idUser", TaskController, :index


  end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session, :protect_from_forgery]
      live_dashboard "/dashboard", metrics: TodoListWeb.Telemetry
    end
  end
end
