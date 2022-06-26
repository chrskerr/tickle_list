defmodule TickleList.Workspace do
  use Ecto.Schema
  import Ecto.Changeset

  schema "workspaces" do
    field :name, :string
    field :key, :string
    has_many :lists, TickleList.List

    timestamps()
  end

  @doc false
  def changeset(workspace, attrs) do
    workspace
    |> cast(attrs, [:name, :key])
    |> validate_required([:name, :key])
  end
end
