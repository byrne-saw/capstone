class CreateBloodPressureLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blood_pressure_logs do |t|
      t.integer :user_id
      t.datetime :log_time
      t.integer :systolic
      t.integer :diastolic

      t.timestamps
    end
  end
end
