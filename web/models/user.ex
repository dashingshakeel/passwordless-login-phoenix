defmodule PasswordlessLoginApp.User do
  use PasswordlessLoginApp.Web, :model

  schema "users" do
    field :email, :string
    field :access_token, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :access_token])
    |> update_change(:email, &String.downcase/1)
    |> validate_required([:email])
    |> unique_constraint(:email)
    |> unique_constraint(:access_token)
  end
end
