class CreateBackgrounds < ActiveRecord::Migration[5.2]
  def change
    create_table :backgrounds do |t|
      t.references :main, foreign_key: true
      t.string :backgroundimg

      t.timestamps
    end
  end
end
