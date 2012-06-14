class Product < ActiveRecord::Base
  attr_accessible :name #, :listname

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :lists
  has_many :subscribers, :through => :lists

  validates :name, presence: true
  def to_s; name end
  def listname; name end

end

