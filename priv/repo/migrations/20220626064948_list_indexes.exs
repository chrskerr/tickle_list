defmodule TickleList.Repo.Migrations.ListIndexes do
  use Ecto.Migration

  def change do
    alter table(:workspaces) do
      add :key, :string
    end

    alter table(:lists) do
      remove :last_updated_at
      remove :workspace_id
    end

    alter table(:lists) do
      add :workspace_id, references(:workspaces)
    end

    create index(:lists, [:workspace_id])
    create index(:lists, [:workspace_id, :updated_at])
  end
end
