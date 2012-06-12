class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :product_id
      t.integer :subscriber_id

      t.timestamps
    end
  end
end
