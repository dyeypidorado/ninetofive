class AddIsFbToLists < ActiveRecord::Migration
  def change
    add_column :lists, :is_fb, :boolean
  end
end
