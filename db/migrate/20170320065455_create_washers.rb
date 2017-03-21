class CreateWashers < ActiveRecord::Migration
  def change
    create_table :washers do |t|
      t.string :name
      t.string :channel
      t.string :start_at
      t.string :intervel
      t.string :start_stop

      t.timestamps null: false
    end
  end
end
