defmodule BackofficeWeb.Router do
  use BackofficeWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BackofficeWeb, as: :backoffice do
    pipe_through [:api]

    get "/report", ReportController, :report
  end
end
