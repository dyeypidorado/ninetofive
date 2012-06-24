class CreateAffiliates < ActiveRecord::Migration
  def change
    create_table :affiliates do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
