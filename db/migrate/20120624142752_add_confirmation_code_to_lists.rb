class AddConfirmationCodeToLists < ActiveRecord::Migration
  def change
    add_column :lists, :confirmation_code, :string
  end
end
