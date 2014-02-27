class Project < ActiveRecord::Base
  has_many :pledges
  belongs_to :founder, class_name: "User"
  has_many :rewards
  has_many :backers, through: :pledges, source: :user
end
