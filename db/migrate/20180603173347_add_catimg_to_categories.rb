class AddCatimgToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :catimg, :string
  end
end
