class Path < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  # validates :user_id, presence: true, numericality: { only_integer: true }

  belongs_to :user
end
