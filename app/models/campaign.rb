class Campaign < ActiveRecord::Base
  attr_accessible :name, :trigger_code, :steps_attributes, :product_id

  belongs_to :product
  has_many :steps

  before_create :generate_code

  accepts_nested_attributes_for :steps, :reject_if => lambda { |a| a[:promotion_name].blank? }, :allow_destroy => true

  def generate_code
    self.trigger_code = rand(36**12).to_s(36)
  end
end
