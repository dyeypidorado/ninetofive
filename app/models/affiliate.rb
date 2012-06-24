class Affiliate < ActiveRecord::Base
  attr_accessible :code, :name
  before_create :generate_code
  has_many :lists

  def generate_code
    self.code = rand(36**12).to_s(36)
  end
end

