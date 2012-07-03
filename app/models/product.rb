class Product < ActiveRecord::Base
  attr_accessible :name #, :listname
  after_create :create_squeeze

  extend FriendlyId
  friendly_id :name, use: :slugged
  
  belongs_to :category

  has_many :pages
  has_many :lists, :through => :pages

  validates :name, presence: true

  def to_s; name end

  def create_squeeze
    self.pages.create title: "Your squeeze page title here.", content: "Your content here." , page_type: PageType::Squeeze
  end

  def squeeze_page
    pages.find_by_page_type(PageType::Squeeze)
  end
end

