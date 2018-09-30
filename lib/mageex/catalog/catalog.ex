defmodule Mageex.Catalog do
  @moduledoc """
  The Catalog context.
  """

  import Ecto.Query, warn: false
  alias Mageex.Repo

  alias Mageex.Catalog.Product

  @doc """
  Returns the list of catalog_product_entity.

  ## Examples

      iex> list_catalog_product_entity()
      [%Product{}, ...]

  """
  def list_catalog_product_entity(%{limit: limit}) when is_integer(limit) do
    Product
    |> limit(^limit)
    |> Repo.all
  end
  def list_catalog_product_entity(%{}) do
    Repo.all(Product)
  end

  @doc """
  Gets a single product.

  Raises `Ecto.NoResultsError` if the Product does not exist.

  ## Examples

      iex> get_product!(123)
      %Product{}

      iex> get_product!(456)
      ** (Ecto.NoResultsError)

  """
  def get_product!(id), do: Repo.get!(Product, id)

  @doc """
  Creates a product.

  ## Examples

      iex> create_product(%{field: value})
      {:ok, %Product{}}

      iex> create_product(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_product(attrs \\ %{}) do
    %Product{}
    |> Product.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a product.

  ## Examples

      iex> update_product(product, %{field: new_value})
      {:ok, %Product{}}

      iex> update_product(product, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_product(%Product{} = product, attrs) do
    product
    |> Product.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Product.

  ## Examples

      iex> delete_product(product)
      {:ok, %Product{}}

      iex> delete_product(product)
      {:error, %Ecto.Changeset{}}

  """
  def delete_product(%Product{} = product) do
    Repo.delete(product)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking product changes.

  ## Examples

      iex> change_product(product)
      %Ecto.Changeset{source: %Product{}}

  """
  def change_product(%Product{} = product) do
    Product.changeset(product, %{})
  end

  alias Mageex.Catalog.Attribute

  @doc """
  Returns the list of eav_attribute.

  ## Examples

      iex> list_eav_attribute()
      [%Attribute{}, ...]

  """
  def list_eav_attribute do
    Repo.all(Attribute)
  end

  @doc """
  Gets a single attribute.

  Raises `Ecto.NoResultsError` if the Attribute does not exist.

  ## Examples

      iex> get_attribute!(123)
      %Attribute{}

      iex> get_attribute!(456)
      ** (Ecto.NoResultsError)

  """
  def get_attribute!(id), do: Repo.get!(Attribute, id)

  @doc """
  Creates a attribute.

  ## Examples

      iex> create_attribute(%{field: value})
      {:ok, %Attribute{}}

      iex> create_attribute(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_attribute(attrs \\ %{}) do
    %Attribute{}
    |> Attribute.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a attribute.

  ## Examples

      iex> update_attribute(attribute, %{field: new_value})
      {:ok, %Attribute{}}

      iex> update_attribute(attribute, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_attribute(%Attribute{} = attribute, attrs) do
    attribute
    |> Attribute.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Attribute.

  ## Examples

      iex> delete_attribute(attribute)
      {:ok, %Attribute{}}

      iex> delete_attribute(attribute)
      {:error, %Ecto.Changeset{}}

  """
  def delete_attribute(%Attribute{} = attribute) do
    Repo.delete(attribute)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking attribute changes.

  ## Examples

      iex> change_attribute(attribute)
      %Ecto.Changeset{source: %Attribute{}}

  """
  def change_attribute(%Attribute{} = attribute) do
    Attribute.changeset(attribute, %{})
  end
end
