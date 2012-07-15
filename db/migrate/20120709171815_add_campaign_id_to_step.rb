class AddCampaignIdToStep < ActiveRecord::Migration
  def change
    add_column :steps, :campaign_id, :integer
  end
end
