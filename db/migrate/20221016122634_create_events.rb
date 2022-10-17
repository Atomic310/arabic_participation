class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer :event_id
      t.date :date
      t.string :title
      t.text :description
      t.string :location
      t.decimal :price
      t.integer :event_type

      t.timestamps
    end
  end
end
