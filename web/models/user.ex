defmodule WorthIt.User do
  use WorthIt.Web, :model

  schema "users" do
    field :email, :string
    field :password, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :password])
    |> validate_required([:email, :password])
    |> validate_length(:password, min: 5)
    |> validate_format(:email, ~r/@/)
    |> unique_constraint(:email)
  end
end
