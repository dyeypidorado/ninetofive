class Page < ActiveRecord::Base
  attr_accessible :content, :status_code, :title
  attr_readonly :link_code

  belongs_to :product
  has_one :status

  before_create :generate_code

  def generate_code
    self.link_code = rand(36**12).to_s(36)
  end
end
