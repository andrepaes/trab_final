defmodule Backoffice.Repo.Migrations.CreateBackofficeAccounts do
  use Ecto.Migration

  def change do
    create table(:req_counter) do
      add :counter, :integer
    end
  end
end
