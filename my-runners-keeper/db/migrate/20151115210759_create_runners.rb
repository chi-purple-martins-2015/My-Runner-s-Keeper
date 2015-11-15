class CreateRunners < ActiveRecord::Migration
  def change
    create_table :runners do |t|
      t.integer :id
      t.string :first_name
      t.string :last_name
      t.boolean :captain
      t.string :email
      t.integer :phone_number
      t.string :img_url
      t.string :password_digest


      t.timestamps null: false
    end
  end
end
