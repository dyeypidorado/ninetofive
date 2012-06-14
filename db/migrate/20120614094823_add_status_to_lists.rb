class AddStatusToLists < ActiveRecord::Migration
  def change
    add_column :lists, :status, :string, :default => 'pending'
  end
end
