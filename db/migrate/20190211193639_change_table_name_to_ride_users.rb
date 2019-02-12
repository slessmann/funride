class ChangeTableNameToRideUsers < ActiveRecord::Migration[5.1]
  def change
  	rename_table :user_rides, :ride_users
  end
end
