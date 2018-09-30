defmodule MageexWeb.Resolver.Attribute do
  @moduledoc false
  alias Mageex.Catalog
  alias Absinthe.Blueprint.Document.Field

#  def all_attributes(_root, args, _info) do
#    {:ok, Catalog.list_eav_attribute(args)}
#  end

  def all_attributes(_root, _args, _info) do
    {:ok, Catalog.list_eav_attribute()}
  end


end
