class ChangeStatusCode < ActiveRecord::Migration
  def change
    remove_column :lists, :status
    add_column :lists, :status, :integer, :default => StatusCode::Pending
  end
end
