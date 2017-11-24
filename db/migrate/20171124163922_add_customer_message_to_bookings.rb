class AddCustomerMessageToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :customer_message, :string
  end
end
