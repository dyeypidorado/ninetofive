class RenameStatusToStatusCodeInLists < ActiveRecord::Migration
  def change
    remove_column :lists, :status
    add_column :lists, :status_code, :integer, :default => StatusCode::Pending
  end
end
