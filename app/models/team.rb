class Team < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :memberships
  has_many :users, through: :memberships
end
