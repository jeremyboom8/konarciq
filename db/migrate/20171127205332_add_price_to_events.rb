class AddPriceToEvents < ActiveRecord::Migration[5.1]
  def change
    add_monetize :events, :price, currency: { present: false }
  end
end
