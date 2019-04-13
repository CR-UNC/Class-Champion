class AddAssociatedModelsDidntWork < ActiveRecord::Migration[5.2]
  def change
    remove_column :assignments, :user, :reference
    remove_column :incentives, :user, :reference
  end
end
