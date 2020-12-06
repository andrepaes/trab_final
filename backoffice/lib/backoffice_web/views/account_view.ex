defmodule BackofficeWeb.AccountView do
  use BackofficeWeb, :view
  alias BackofficeWeb.AccountView

  def render("index.json", %{backoffice_accounts: backoffice_accounts}) do
    %{data: render_many(backoffice_accounts, AccountView, "account.json")}
  end

  def render("show.json", %{account: account}) do
    %{data: render_one(account, AccountView, "account.json")}
  end

  def render("account.json", %{account: account}) do
    %{id: account.id}
  end
end
