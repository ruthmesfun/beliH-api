class Lesson < ApplicationRecord
  belongs_to :unit
  has_many :lesson_comments
end
