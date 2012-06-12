class AddSlugToSubscriber < ActiveRecord::Migration
  def change
    add_column :subscribers, :slug, :string
  end
end
