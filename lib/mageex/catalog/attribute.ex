defmodule Mageex.Catalog.Attribute do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:attribute_id, :id, autogenerate: true}

  schema "eav_attribute" do
    field :attribute_code, :string
    field :attribute_model, :string
    field :backend_model, :string
    field :backend_type, :string
    field :backend_table, :string
    field :frontend_model, :string
    field :frontend_label, :string
    field :frontend_input, :string
    field :frontend_class, :string
    field :source_model, :string
    field :is_required, :boolean
    field :is_user_defined, :boolean
    field :default_value, :string
    field :is_unique, :boolean
    field :entity_type_id, :integer
    field :note, :string
  end

  @doc false
  def changeset(attribute, attrs) do
    attribute
    |> cast(attrs, [])
    |> validate_required([])
  end
end
