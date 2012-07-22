class Subscriber < ActiveRecord::Base
  attr_accessible :email, :name

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :lists

  validates :email,
            :presence => true,
            :uniqueness => true,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }

  validates :name,
            :presence => true

  def is_subscribed?(product)
    product_list(product).status_code == StatusCode::Subscribed
  end

  def product_list(product)
    lists.find_by_product_id(product.id)
  end

  def subscribed_to_page(page)
    if lists.find_by_page_id(page.id).set_subscribed
      # @mimi = Mimi::set_madmimi
      # @mimi.add_to_list(self.email, page.listname)
    end
  end

end

