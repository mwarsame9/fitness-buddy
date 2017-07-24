class CreateMeasurements < ActiveRecord::Migration[5.1]
  def change
    create_table :measurements do |t|
      t.column :chest, :integer
      t.column :arms, :integer
      t.column :waist, :integer
      t.column :hips, :integer
      t.column :thighs, :integer
      t.column :calves, :integer
      t.column :body_fat, :integer
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
