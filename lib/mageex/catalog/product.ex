defmodule Mageex.Catalog.Product do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:entity_id, :id, autogenerate: true}

  schema "catalog_product_entity" do
    field :type_id, :string
    field :entity_type_id, :integer
    field :sku, :string
    field :has_options, :boolean
    field :required_options, :boolean
    field :created_at, :utc_datetime
    field :updated_at, :utc_datetime
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [])
    |> validate_required([])
  end
end
