defmodule Mageex.CatalogTest do
  use Mageex.DataCase

  alias Mageex.Catalog

  describe "catalog_product_entity" do
    alias Mageex.Catalog.Product

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def product_fixture(attrs \\ %{}) do
      {:ok, product} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Catalog.create_product()

      product
    end

    test "list_catalog_product_entity/0 returns all catalog_product_entity" do
      product = product_fixture()
      assert Catalog.list_catalog_product_entity() == [product]
    end

    test "get_product!/1 returns the product with given id" do
      product = product_fixture()
      assert Catalog.get_product!(product.id) == product
    end

    test "create_product/1 with valid data creates a product" do
      assert {:ok, %Product{} = product} = Catalog.create_product(@valid_attrs)
    end

    test "create_product/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Catalog.create_product(@invalid_attrs)
    end

    test "update_product/2 with valid data updates the product" do
      product = product_fixture()
      assert {:ok, product} = Catalog.update_product(product, @update_attrs)
      assert %Product{} = product
    end

    test "update_product/2 with invalid data returns error changeset" do
      product = product_fixture()
      assert {:error, %Ecto.Changeset{}} = Catalog.update_product(product, @invalid_attrs)
      assert product == Catalog.get_product!(product.id)
    end

    test "delete_product/1 deletes the product" do
      product = product_fixture()
      assert {:ok, %Product{}} = Catalog.delete_product(product)
      assert_raise Ecto.NoResultsError, fn -> Catalog.get_product!(product.id) end
    end

    test "change_product/1 returns a product changeset" do
      product = product_fixture()
      assert %Ecto.Changeset{} = Catalog.change_product(product)
    end
  end

  describe "eav_attribute" do
    alias Mageex.Catalog.Attribute

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def attribute_fixture(attrs \\ %{}) do
      {:ok, attribute} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Catalog.create_attribute()

      attribute
    end

    test "list_eav_attribute/0 returns all eav_attribute" do
      attribute = attribute_fixture()
      assert Catalog.list_eav_attribute() == [attribute]
    end

    test "get_attribute!/1 returns the attribute with given id" do
      attribute = attribute_fixture()
      assert Catalog.get_attribute!(attribute.id) == attribute
    end

    test "create_attribute/1 with valid data creates a attribute" do
      assert {:ok, %Attribute{} = attribute} = Catalog.create_attribute(@valid_attrs)
    end

    test "create_attribute/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Catalog.create_attribute(@invalid_attrs)
    end

    test "update_attribute/2 with valid data updates the attribute" do
      attribute = attribute_fixture()
      assert {:ok, attribute} = Catalog.update_attribute(attribute, @update_attrs)
      assert %Attribute{} = attribute
    end

    test "update_attribute/2 with invalid data returns error changeset" do
      attribute = attribute_fixture()
      assert {:error, %Ecto.Changeset{}} = Catalog.update_attribute(attribute, @invalid_attrs)
      assert attribute == Catalog.get_attribute!(attribute.id)
    end

    test "delete_attribute/1 deletes the attribute" do
      attribute = attribute_fixture()
      assert {:ok, %Attribute{}} = Catalog.delete_attribute(attribute)
      assert_raise Ecto.NoResultsError, fn -> Catalog.get_attribute!(attribute.id) end
    end

    test "change_attribute/1 returns a attribute changeset" do
      attribute = attribute_fixture()
      assert %Ecto.Changeset{} = Catalog.change_attribute(attribute)
    end
  end
end
