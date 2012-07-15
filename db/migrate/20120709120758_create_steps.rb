class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :promotion_name
      t.integer :next_id
      t.boolean :is_first

      t.timestamps
    end
  end
end
