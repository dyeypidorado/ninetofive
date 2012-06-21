class CreateReferrals < ActiveRecord::Migration
  def change
    create_table :referrals do |t|
      t.string :code
      t.string :link

      t.timestamps
    end
  end
end
