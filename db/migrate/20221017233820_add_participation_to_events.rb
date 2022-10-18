class AddParticipationToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :participation, :integer
  end
end
