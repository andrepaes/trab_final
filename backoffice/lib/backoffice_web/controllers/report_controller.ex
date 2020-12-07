defmodule BackofficeWeb.ReportController do
  use BackofficeWeb, :controller

  alias Backoffice.Repo

  alias Backoffice.Counters
  alias Backoffice.Counter

  action_fallback BackofficeWeb.FallbackController

  @url "banking:4000/api/v1/backoffices/report"

  def report(conn, params) do
    with {:ok, total} <- get_report,
         {ok, _} <- Counters.inc_counter()
    do
      render(conn, "report.json", %{report: total})
    end
  end

  def report_counter(conn, _params) do
    with %Counter{counter: counter} <- Counters.get_counter do
      render(conn, "counter.json", %{counter: counter})
    end
  end

  def get_report() do
    {:ok, %HTTPoison.Response{status_code: 200, body: body}} = HTTPoison.get(@url)

    total = body
    |> Poison.decode!()
    |> Map.get("total")

    {:ok, total}
  end
end
