class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :region1, :default => "Content here."
      t.string :region2, :default => "Content here."
      t.string :region3, :default => "Content here."
      t.string :region4, :default => "Content here."
      t.string :region5, :default => "Content here."

      t.timestamps
    end
  end
end
