class Course < ApplicationRecord
    has_many :student_courses
    has_many :units 
    has_many :lessons, through: :units
    has_many :students, through: :student_courses
    belongs_to :teacher
end
