defmodule TickleList.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :title, :string
      add :list_id, references(:lists)
      add :is_completed, :boolean, default: false, null: false

      timestamps()
    end

    create index(:items, [:list_id])
  end
end
