class CreateOfficers < ActiveRecord::Migration[6.1]
  def change
    create_table :officers do |t|
      t.integer :uin
      t.string :position
      t.string :password

      t.timestamps
    end
  end
end
