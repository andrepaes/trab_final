defmodule Backoffice.Counters do

  import Ecto.Query, warn: false

  alias Backoffice.Repo

  alias Backoffice.Counter

  def inc_counter() do
    case get_counter() do
      %Counter{counter: counter} = schema -> inc_counter(schema, counter)
      nil -> create_counter()
    end
  end

  def create_counter do
    %Counter{}
    |> Counter.changeset(%{})
    |> Repo.insert
  end

  def get_counter do
    Repo.one(Counter)
  end

  defp inc_counter(schema, counter) do
    schema
    |> Counter.changeset(%{counter: counter + 1})
    |> Repo.update()
  end
end
