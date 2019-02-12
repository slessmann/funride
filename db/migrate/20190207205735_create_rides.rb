class CreateRides < ActiveRecord::Migration[5.1]
  def change
    create_table :rides do |t|
    	t.integer :user_id
    	t.string :name
    	t.string :location
    	t.string :ride_type
    	t.string :image_url
    	t.string :description
    	t.date :date
    	t.time :start_time

    	t.timestamp
    end
  end
end
