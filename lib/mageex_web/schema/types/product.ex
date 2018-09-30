defmodule MageexWeb.Schema.Types.Product do
  @moduledoc false
  use Absinthe.Schema.Notation


  @desc """
    A representation of a Magento Product
  """
  object :product do
    field :entity_id, non_null(:id)
    field :sku, non_null(:string)
    field :price, :float
  end

end
