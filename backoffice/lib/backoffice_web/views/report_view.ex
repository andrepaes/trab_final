defmodule BackofficeWeb.ReportView do
  use BackofficeWeb, :view

  def render("report.json", %{report: total}) do
    %{total: total || 0}
  end
end
