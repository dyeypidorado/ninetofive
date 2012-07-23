class ReslugStaticPages < ActiveRecord::Migration
  def up
    StaticPage.find_each(&:save)
  end

  def down
  end
end

