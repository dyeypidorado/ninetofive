class AddProductIdToList < ActiveRecord::Migration
  def change
    add_column :lists, :product_id, :integer
  end
end
