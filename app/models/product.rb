class Product < ActiveRecord::Base
  attr_accessible :listname, :name
  
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  has_many :lists, :foreign_key => :product_id, :dependent => :destroy
  has_many :subscribers, :through => :lists, :source => :subscriber, :dependent => :destroy
end
