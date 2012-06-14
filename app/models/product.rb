class Product < ActiveRecord::Base
  attr_accessible :name #, :listname
  after_create :create_mimi_list

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :lists
  has_many :subscribers, :through => :lists

  validates :name, presence: true
  def to_s; name end
  def listname; name end

  def create_mimi_list
    @mimi = Mimi::set_madmimi
    @mimi.new_list listname
  end
end

