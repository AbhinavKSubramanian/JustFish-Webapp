class AddNewarrivalimgToNewarrivals < ActiveRecord::Migration[5.2]
  def change
    add_column :newarrivals, :newarrivalimg, :string
  end
end
