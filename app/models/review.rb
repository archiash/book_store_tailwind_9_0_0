class Review < ApplicationRecord
  belongs_to :user
  belongs_to :reviewable, polymorphic: true

  has_rich_text :description

  validates :user, presence: true
  validates :reviewable, presence: true
end
