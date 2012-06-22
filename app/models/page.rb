class Page < ActiveRecord::Base
  attr_accessible :content, :status_code, :title, :page_type
  attr_readonly :link_code

  after_create :create_mimi_list

  belongs_to :product

  has_one :list
  has_many :subscribers, :through => :list

  before_create :generate_code

  def pagetype
    case page_type
    when PageType::Squeeze
      "squeezed"
    when PageType::Sales
      "sales"
    else
      ""
    end
  end

  def generate_code
    self.link_code = rand(36**12).to_s(36)
  end

  def listname; "#{product.name} - #{title}" end
  def create_mimi_list
    @mimi = Mimi::set_madmimi
    @mimi.new_list listname
  end
end
