defmodule BackofficeWeb.ReportController do
  use BackofficeWeb, :controller

  alias Backoffice.Repo

  action_fallback BackofficeWeb.FallbackController

  @url "banking:4000/api/v1/backoffices/report"

  def report(conn, params) do
    with {:ok, total} <- get_report,
         {ok, _} <- increment_counter,
    do
      render(conn, "report.json", %{report: total})
    end
  end

  def get_report() do
    {:ok, %HTTPoison.Response{status_code: 200, body: body}} = HTTPoison.get(@url)

    total = body
    |> Poison.decode!()
    |> Map.get("total")

    {:ok, total}
  end

  def increment_counter() do
  end
end
