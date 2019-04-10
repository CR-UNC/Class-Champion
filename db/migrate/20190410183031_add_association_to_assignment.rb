class AddAssociationToAssignment < ActiveRecord::Migration[5.2]
  def change
    add_column :assignments, :user, :reference
    add_column :incentives, :user, :reference
  end
end
