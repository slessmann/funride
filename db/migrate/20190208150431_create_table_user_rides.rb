class CreateTableUserRides < ActiveRecord::Migration[5.1]
  def change
    create_table :User_rides do |t|
    	t.integer :user_id
    	t.integer :ride_id
    	t.string :status_participation

    	t.timestamp
    end
  end
end
