class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :member_id
      t.integer :event_id
      t.text :comment
      t.integer :rating

      t.timestamps
    end
  end
end
