class AddSkuToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :sku, :string
  end
end
