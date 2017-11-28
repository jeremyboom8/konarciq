class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.string :status
      t.references :user, foreign_key: true
      t.references :listing, foreign_key: true
      t.string :event_sku
      t.monetize :amount, currency: { present: false }
      t.json :payment

      t.timestamps
    end
  end
end
