class List < ActiveRecord::Base
  belongs_to :product
  belongs_to :subscriber
end
