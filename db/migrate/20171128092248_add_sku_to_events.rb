class AddSkuToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :sku, :string
  end
end
