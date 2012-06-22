class ChangeProductIdToPageId < ActiveRecord::Migration
  def change
    rename_column :lists, :product_id, :page_id
  end
end
