defmodule BackofficeWeb.ReportView do
  use BackofficeWeb, :view

  def render("report.json", %{report: total}) do
    %{total: total || 0}
  end

  def render("counter.json", %{counter: counter}) do
    %{counter: counter}
  end
end
