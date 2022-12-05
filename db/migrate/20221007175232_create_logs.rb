class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.integer :log_id
      t.integer :uin
      t.integer :event_id

      t.timestamps
    end
  end
end
