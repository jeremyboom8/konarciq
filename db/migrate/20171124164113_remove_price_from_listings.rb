class RemovePriceFromListings < ActiveRecord::Migration[5.1]
  def change
    remove_column :listings, :price
  end
end
