class PathSection < ApplicationRecord
  belongs_to :path
  has_many :lessons

end
