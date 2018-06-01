class CreateMains < ActiveRecord::Migration[5.2]
  def change
    create_table :mains do |t|
      t.string :shop
      t.string :contact_mail
      t.integer :contact_no
      t.text :address

      t.timestamps
    end
  end
end
