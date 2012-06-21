class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :value
      t.integer :page_id

      t.timestamps
    end
  end
end
