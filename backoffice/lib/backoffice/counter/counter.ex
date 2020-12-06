defmodule Backoffice.Counter do
  use Ecto.Schema
  import Ecto.Changeset

  @timestamps_opts [type: :utc_datetime]

  schema "req_counter" do
    field :counter
  end

  def changeset() do
    %__MODULE__{}
    |> cast()
  end
end
