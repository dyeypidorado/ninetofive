class Step < ActiveRecord::Base
  attr_accessible :is_first, :next_id, :promotion_name
  after_create :page_create
  after_create :set_next_step
  before_destroy :set_step_array

  belongs_to :next_step, class_name: 'Step', foreign_key: 'next_id'

  has_one :page
  has_many :lists
  belongs_to :campaign

  def page_create
    self.create_page title: self.promotion_name
  end

  def set_next_step
    campaign = self.campaign
    if !(campaign.steps.first == self)
      prev_step = campaign.steps.where(next_id: nil).first
      prev_step.next_id = self.id
      prev_step.save
    end
  end

  def set_step_array
    campaign = self.campaign
    prev_step = campaign.steps.find_by_next_id self.id
    next_step = campaign.steps.find self.next_id if !self.next_id.nil?

    if !prev_step.nil?
      if !next_step.nil?
        prev_step.next_id = next_step.id
      else
        prev_step.next_id = nil
      end
      prev_step.save!
    end
  end

end
