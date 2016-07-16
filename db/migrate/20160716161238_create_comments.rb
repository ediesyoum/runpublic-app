class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :run, foreign_key: true
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
