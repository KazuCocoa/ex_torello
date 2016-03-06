defmodule ExTrello.Router do
  use ExTrello.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]

    plug Guardian.Plug.VerifyHeader
    plug Guardian.Plug.LoadResource
  end

  scope "/api", ExTrello do
    pipe_through :api # Use the default browser stack

    scope "/v1" do
      post "/registrations", RegistrationController, :create

      post "/sessions", SessionController, :create
      delete "/sessions", SessionController, :delete

      get "/current_user", CurrentUserController, :show

      resources "boards", BoardController, only: [:index, :create]
    end
  end


  scope "/", ExTrello do
    pipe_through :browser # Use the default browser stack
    get "*path", PageController, :index
  end

end
