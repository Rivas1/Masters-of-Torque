class RemoveUserIdFromVehicles < ActiveRecord::Migration[5.1]
  def change
    remove_column :vehicles, :user_id, :integer
  end
end
