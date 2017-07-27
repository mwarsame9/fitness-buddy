class AddNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :workouts, :notes, :string
  end
end
