class Path < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  # validates :description, length: { minimum: 10 }, presence: true, unless: -> {self.description.blank?}

  belongs_to :user
  has_many :path_section
end
