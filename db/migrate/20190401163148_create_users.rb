class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :points
      t.string :email
      t.string :encrypted_password, :limit => 128
      t.string :confirmation_token, :limit => 128
      t.string :remember_token, :limit => 128

      t.timestamps
    end
  end
end
