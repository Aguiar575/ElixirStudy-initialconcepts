defmodule Weabanex.Repo.Migrations.CreateExercisesTable do
  use Ecto.Migration

  def change do
    create table(:exercises) do
      add :name, :string
      add :youtube_video_url, :string
      add :protocol_description, :string
      add :repetition, :string
      add :training_id, references(:trainings)

      timestamps()
    end
  end
end
