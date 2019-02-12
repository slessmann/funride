class RenameColumnImageRideTable < ActiveRecord::Migration[5.1]
  def change
  	rename_column :rides, :image_url, :image
  end
end
