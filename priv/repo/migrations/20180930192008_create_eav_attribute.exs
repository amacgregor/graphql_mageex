defmodule Mageex.Repo.Migrations.CreateEavAttribute do
  use Ecto.Migration

  def change do
    create table(:eav_attribute) do

      timestamps()
    end

  end
end
