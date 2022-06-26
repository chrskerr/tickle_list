defmodule TickleList.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :is_completed, :boolean, default: false
    field :list_id, :integer
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:title, :list_id, :is_completed])
    |> validate_required([:title, :list_id, :is_completed])
  end
end
