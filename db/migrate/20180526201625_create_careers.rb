class CreateCareers < ActiveRecord::Migration[5.2]
  def change
    create_table :careers do |t|
      t.string :career_name
      t.text :career_descp

      t.timestamps
    end
  end
end
