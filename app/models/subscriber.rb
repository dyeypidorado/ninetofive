class Subscriber < ActiveRecord::Base
  attr_accessible :email, :name
  
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  has_many :lists, :foreign_key => :subscriber_id, :dependent => :destroy
  has_many :products, :through => :lists, :source => :product
end
