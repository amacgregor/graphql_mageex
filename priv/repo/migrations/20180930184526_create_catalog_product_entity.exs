defmodule Mageex.Repo.Migrations.CreateCatalogProductEntity do
  use Ecto.Migration

  def change do
    create table(:catalog_product_entity) do

      timestamps()
    end

  end
end
