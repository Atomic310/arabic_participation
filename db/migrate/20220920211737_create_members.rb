class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.integer :uin
      t.string :first_name
      t.string :last_name
      t.string :classification
      t.string :email
      t.string :arabic_lvl

      t.timestamps
    end
  end
end
