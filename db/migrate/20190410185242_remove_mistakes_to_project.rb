class RemoveMistakesToProject < ActiveRecord::Migration[5.2]
  
  def change
    remove_column :assignments, :user_id
    remove_column :incentives, :user_id
  end
end
