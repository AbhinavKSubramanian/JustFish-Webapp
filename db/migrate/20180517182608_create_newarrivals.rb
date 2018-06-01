class CreateNewarrivals < ActiveRecord::Migration[5.2]
  def change
    create_table :newarrivals do |t|
      t.string :name
      t.text :details
      t.date :pdtdate
      t.references :main, foreign_key: true

      t.timestamps
    end
  end
end
