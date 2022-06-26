defmodule TickleList.List do
  use Ecto.Schema
  import Ecto.Changeset

  schema "lists" do
    field :name, :string
    field :workspace_id, :integer
    has_many :items, TickleList.Item

    timestamps()
  end

  @doc false
  def changeset(list, attrs) do
    list
    |> cast(attrs, [:name, :workspace_id])
    |> validate_required([:name, :workspace_id])
  end
end
