defmodule MageexWeb.Schema.Types.Attribute do
  @moduledoc false
  use Absinthe.Schema.Notation


  @desc """
    A representation of the Magento main attribute entity
  """
  object :attribute do
    field :attribute_id, non_null(:id)
    field :attribute_code, non_null(:string)
  end

end
