class AddSidebarToPages < ActiveRecord::Migration
  def change
    add_column :pages, :sidebar, :text
  end
end
