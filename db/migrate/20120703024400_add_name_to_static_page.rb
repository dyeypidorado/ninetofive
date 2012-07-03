class AddNameToStaticPage < ActiveRecord::Migration
  def change
    add_column :static_pages, :name, :string
  end
end
