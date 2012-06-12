class Subscriber < ActiveRecord::Base
  attr_accessible :email, :name
  
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  has_many :lists, :foreign_key => :subscriber_id, :dependent => :destroy
  has_many :products, :through => :lists, :source => :product
  
  validates :email,   
            :presence => true,   
            :uniqueness => true,   
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
  
  validates :name,
            :presence => true
end
