defmodule TickleList.Repo.Migrations.CreateLists do
  use Ecto.Migration

  def change do
    create table(:lists) do
      add :name, :string
      add :last_updated_at, :time
      add :workspace_id, :string

      timestamps()
    end
  end
end
