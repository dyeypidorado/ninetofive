class Campaign < ActiveRecord::Base
  attr_accessible :name, :trigger_code

  belongs_to :product
  has_many :steps
end
