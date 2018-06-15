class AddPdtimgToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :pdtimg, :string
  end
end
