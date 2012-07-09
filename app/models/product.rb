class Product < ActiveRecord::Base
  attr_accessible :name #, :listname
  #after_create :create_sales

  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :category

  has_many :campaigns
  has_many :lists
  has_many :subscribers, :through => :list
  has_one :page

  validates :name, presence: true

  def to_s; name end

  def create_sales
    self.pages.create title: "Your squeeze page title here.", content: "Your content here." , page_type: PageType::Sales
  end

  def sales_page
    self.pages.find_by_page_type(PageType::Sales)
  end
end
