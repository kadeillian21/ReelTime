class User < ApplicationRecord
  has_secure_password
  include ImageUploader::Attachment(:profile_image)
  validates :user_name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  has_many :follower_relationships, class_name: "Relationship", foreign_key: "leader_id"
  has_many :followers, through: :follower_relationships, source: :follower
  has_many :leader_relationships, class_name: "Relationship", foreign_key: "follower_id"
  has_many :leaders, through: :leader_relationships, source: :leader
  has_many :shared_posts
  has_many :original_posts
end
