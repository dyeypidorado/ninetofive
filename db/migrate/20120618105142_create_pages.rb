class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :content
      t.integer :status_code
      t.integer :product_id
      t.string :link_code

      t.timestamps
    end
  end
end
