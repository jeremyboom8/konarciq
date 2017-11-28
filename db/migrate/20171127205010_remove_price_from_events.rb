class RemovePriceFromEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :price
  end
end
