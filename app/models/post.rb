class Post < ApplicationRecord
  belongs_to :user
  validates :point_name, presence: true
  validates :size, presence: true
  validates :score, presence: true
  validates :comment, presence: true
  validates :status, presence: true
  default_scope -> { order(created_at: :desc) }
end
