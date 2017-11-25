class RemoveDateStatusListingFromBookings < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookings, :status
    remove_column :bookings, :start_date
    remove_column :bookings, :end_date

    remove_reference :bookings, :listings

    add_reference :bookings, :event, foreign_key: true
  end
end
