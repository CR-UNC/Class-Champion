class CreateIncentives < ActiveRecord::Migration[5.2]
  def change
    create_table :incentives do |t|
      t.string :title
      t.text :text
      t.integer :cost
      t.binary :image

      t.timestamps
    end
  end
end
