class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :text
      t.integer :difficulty
      t.decimal :Goalgrade
      t.date :Due

      t.timestamps
    end
  end
end
