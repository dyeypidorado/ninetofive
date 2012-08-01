class StaticPage < ActiveRecord::Base
  attr_accessible :name, :region1, :region2, :region3, :region4, :region5

  extend FriendlyId
  friendly_id :name, use: :slugged
end
