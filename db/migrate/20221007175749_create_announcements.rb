class CreateAnnouncements < ActiveRecord::Migration[6.1]
  def change
    create_table :announcements do |t|
      t.integer :uin
      t.integer :event_id
      t.text :comment
      t.integer :rating

      t.timestamps
    end
  end
end
