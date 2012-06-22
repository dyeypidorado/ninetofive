class Status < ActiveRecord::Base
  attr_accessible :page_id, :value

  belongs_to :page
end
