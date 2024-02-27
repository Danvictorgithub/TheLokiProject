class Course < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, length: { minimum: 10, maximum: 300 }, presence: true, unless: -> {self.description.blank?}

  belongs_to :user
  has_many :path
end
