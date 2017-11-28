class RemoveSkuFromListings < ActiveRecord::Migration[5.1]
  def change
    remove_column :listings, :sku, :string
  end
end
