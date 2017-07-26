class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.column :date, :datetime
      t.column :workout, :string
      t.column :length, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
