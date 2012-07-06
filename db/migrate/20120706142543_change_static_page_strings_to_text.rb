class ChangeStaticPageStringsToText < ActiveRecord::Migration
  def change
    remove_column :static_pages, :region1
    remove_column :static_pages, :region2
    remove_column :static_pages, :region3
    remove_column :static_pages, :region4
    remove_column :static_pages, :region5

    add_column :static_pages, :region1, :text
    add_column :static_pages, :region2, :text
    add_column :static_pages, :region3, :text
    add_column :static_pages, :region4, :text
    add_column :static_pages, :region5, :text
  end
end
