class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.column :name, :string
      t.column :sets, :integer
      t.column :reps, :integer
      t.column :user_id, :integer
      t.column :workout_id, :integer

      t.timestamps
    end
  end
end
