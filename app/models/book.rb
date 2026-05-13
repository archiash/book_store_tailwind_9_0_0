class Book < ApplicationRecord
  include Notifications

  has_many :subscribers, dependent: :destroy
  has_rich_text :description
  belongs_to :author, optional: true

  validates :name, presence: true
  validates :price, presence: true
  validates :inventory_count, numericality: { greater_than_or_equal_to: 0 }
end
