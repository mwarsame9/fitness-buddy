class ChangeDate < ActiveRecord::Migration[5.1]
  def change
    remove_column :workouts, :date, :datetime
    add_column :workouts, :date, :date
  end
end
