defmodule Petex.Pet do
  use Ecto.Schema
  import Ecto.Changeset

  alias Petex.Human

  @fields [:age, :kind, :name, :human_id]

  schema "pets" do
    field :age, :integer
    field :kind, :string
    field :name, :string

    belongs_to :human, Human

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @fields)
    |> validate_required(@fields)
    |> validate_number(:age, greater_than_or_equal_to: 0)
    |> validate_length(:name, min: 2)
  end
end
