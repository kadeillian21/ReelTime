class Relationship < ApplicationRecord
  belongs_to :follower, class_name: "User"
  belongs_to :leader, class_name: "User"
  validates :follower_id, uniqueness: true
end
