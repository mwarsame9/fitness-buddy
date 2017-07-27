class DeleteMeasurements < ActiveRecord::Migration[5.1]
  def change
    drop_table :measurements
  end
end
