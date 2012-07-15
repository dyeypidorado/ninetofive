class AddStepIdToPage < ActiveRecord::Migration
  def change
    add_column :pages, :step_id, :integer
  end
end
