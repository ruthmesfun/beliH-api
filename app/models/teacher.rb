class Teacher < ApplicationRecord
    has_many :courses
    has_many :students, through: :courses
    has_many :lesson_comments
end
