defmodule MageexWeb.Schema do
  @moduledoc false
  use Absinthe.Schema
  alias MageexWeb.Resolver.Product, as: ProductResolver
  alias MageexWeb.Resolver.Attribute, as: AttributeResolver

  import_types  MageexWeb.Schema.Types.{
    Product,
    Attribute
  }

  query do
    field :all_products, list_of(:product) do
      arg :limit, :integer
      resolve &ProductResolver.all_products/3
    end

    field :all_attributes, list_of(:attribute) do
      resolve &AttributeResolver.all_attributes/3
    end
  end
end
