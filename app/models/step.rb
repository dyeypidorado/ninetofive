class Step < ActiveRecord::Base
  attr_accessible :is_first, :next_id, :promotion_name
  after_create :page_create

  has_one :page
  has_many :lists
  belongs_to :campaign

  def page_create
    self.create_page title: self.promotion_name
  end

end
