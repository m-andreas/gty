class Membership < ActiveRecord::Base
  belongs_to :user
  belongs_to :team

  state_machine :initial => :to_approve do
    state :to_approve
    state :approved
    state :denied

    event :approve do
      transition [:to_approve] => :approved
    end

    event :deny do
      transition [:to_approve] => :denied
    end
  end
end
