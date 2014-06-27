class CreateEngradeSensorTestReceivers < ActiveRecord::Migration
  def change
    create_table :engrade_sensor_test_receivers do |t|
      t.string :headers
      t.string :body

      t.timestamps
    end
  end
end
