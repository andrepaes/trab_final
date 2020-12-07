defmodule Backoffice.Counter do
  use Ecto.Schema
  import Ecto.Changeset

  @timestamps_opts [type: :utc_datetime]

  schema "req_counter" do
    field :counter, :integer, default: 1
  end

  def changeset(schema \\ %__MODULE__{}, params) do
    schema
    |> cast(params, [:counter])
  end
end
