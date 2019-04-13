class AddAssociatedModelAgainUgh < ActiveRecord::Migration[5.2]
  def change
    add_reference :assignments, :user, index: true
    add_reference :incentives, :user, index: true
  end
end
