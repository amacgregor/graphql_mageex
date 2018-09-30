defmodule MageexWeb.Resolver.Product do
  @moduledoc false
  alias Mageex.Catalog
  alias Absinthe.Blueprint.Document.Field

  def all_products(_root, args, _info) do
    {:ok, Catalog.list_catalog_product_entity(args)}
  end

  def all_products(_root, _args, _info) do
    {:ok, Catalog.list_catalog_product_entity()}
  end

end
