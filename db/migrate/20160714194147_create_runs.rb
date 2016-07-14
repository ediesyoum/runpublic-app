class CreateRuns < ActiveRecord::Migration[5.0]
  def change
    create_table :runs do |t|
      t.string :date
      t.float :distance
      t.string :timer

      t.timestamps
    end
  end
end
