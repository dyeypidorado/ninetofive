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

  def product_list(product)
    lists.find_by_product_id(product.id)
  end

  def update_product_list_status(product, status)
    product_list(product).update_attributes(status_code: status)
  end

end
