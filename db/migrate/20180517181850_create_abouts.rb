class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.integer :sl
      t.text :data
      t.references :main, foreign_key: true

      t.timestamps
    end
  end
end
