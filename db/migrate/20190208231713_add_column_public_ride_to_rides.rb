class AddColumnPublicRideToRides < ActiveRecord::Migration[5.1]
  def change
  	add_column :rides, :public_ride, :boolean, :default => false
  end
end
