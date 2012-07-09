class Step < ActiveRecord::Base
  attr_accessible :is_first, :next_id, :promotion_name

  has_one :static_page
  has_many :lists
  belongs_to :campaign
end
