defmodule Backoffice.Repo.Migrations.CreateBackofficeAccounts do
  use Ecto.Migration

  def change do
    create table(:backoffice_accounts) do
      add :username, :string
      add :password_hashed, :string
      timestamps()
    end

    create unique_index(:backoffice_account, :username)
  end
end
