defmodule ExTrello.Repo.Migrations.CreateUserBoard do
  use Ecto.Migration

  def change do
    create table(:user_boards) do
      add :user_id, references(:users, on_delete: :nothing), null: false
      add :board_id, references(:boards, on_delete: :nothing), null: false

      timestamps
    end
    create index(:user_boards, [:user_id])
    create index(:user_boards, [:board_id])

  end
end