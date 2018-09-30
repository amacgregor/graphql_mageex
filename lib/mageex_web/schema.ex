defmodule MageexWeb.Schema do
  @moduledoc false
  use Absinthe.Schema
  alias MageexWeb.Resolver.Product, as: ProductResolver

  import_types  MageexWeb.Schema.Types.Product

  query do
    field :all_products, list_of(:product) do
      arg :limit, :integer
      resolve &ProductResolver.all_products/3
    end
  end
end
