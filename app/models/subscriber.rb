class Subscriber < ActiveRecord::Base
  attr_accessible :email, :name

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :lists
  has_many :products, :through => :lists

  validates :email,
            :presence => true,
            :uniqueness => true,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }

  validates :name,
            :presence => true
end

