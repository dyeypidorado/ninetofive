class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :region1
      t.string :region2
      t.string :region3
      t.string :region4
      t.string :region5

      t.timestamps
    end
  end
end
