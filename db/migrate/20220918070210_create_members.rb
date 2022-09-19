class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.integer :uin
      t.string :first_name
      t.string :last_name
      t.string :classification
      t.string :major
      t.string :email

      t.timestamps
    end
  end
end
