class CreateRuns < ActiveRecord::Migration[5.0]
  def change
    create_table :runs do |t|
      t.datetime :start_time
      t.float :distance
      t.datetime :end_time

      t.timestamps
    end
  end
end
