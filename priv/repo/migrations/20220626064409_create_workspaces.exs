defmodule TickleList.Repo.Migrations.CreateWorkspaces do
  use Ecto.Migration

  def change do
    create table(:workspaces) do
      add :name, :string

      timestamps()
    end
  end
end
