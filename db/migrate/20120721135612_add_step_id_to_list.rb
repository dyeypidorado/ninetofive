class AddStepIdToList < ActiveRecord::Migration
  def change
    add_column :lists, :step_id, :integer
  end
end
