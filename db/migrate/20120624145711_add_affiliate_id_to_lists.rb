class AddAffiliateIdToLists < ActiveRecord::Migration
  def change
    add_column :lists, :affiliate_id, :integer
    add_index :lists, :affiliate_id
  end
end

