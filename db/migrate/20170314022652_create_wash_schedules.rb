class CreateWashSchedules < ActiveRecord::Migration
  def change
    create_table :wash_schedules do |t|
      t.string :name
      t.string :channel
      t.string :start_time
      t.string :interval
      t.string :start_stop

      t.timestamps null: false
    end
  end
end
