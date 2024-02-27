class Lesson < ApplicationRecord
  belongs_to :path_section
  belongs_to :user
end
