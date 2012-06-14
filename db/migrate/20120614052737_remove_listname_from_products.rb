class RemoveListnameFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :listname
  end
end

