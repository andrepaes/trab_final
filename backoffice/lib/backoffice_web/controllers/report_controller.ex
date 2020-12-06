defmodule BackofficeWeb.ReportController do
  use BackofficeWeb, :controller

  alias Backoffices

  action_fallback ApiBankingWeb.FallbackController

  @url "localhost:4000/report"

  def report(conn, params) do
    @url
    |> HTTPoison.post(params)
    |> IO.inspect
  end
end
