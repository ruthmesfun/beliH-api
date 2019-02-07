class Student < ApplicationRecord
    has_many :student_courses
    has_many :courses, through: :student_courses
    has_many :units, through: :courses
    has_many :teachers, through: :courses
end
