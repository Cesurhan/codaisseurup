class DeleteTableBookings < ActiveRecord::Migration[5.0]
  def change
    drop_table :bookings
  end
end