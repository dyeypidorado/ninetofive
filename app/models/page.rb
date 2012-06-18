class Page < ActiveRecord::Base
  attr_accessible :content, :link_code, :status_code, :title
  belongs_to :product
end
