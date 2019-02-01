class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :school, :grade
  has_many :courses, through: :student_courses
  has_many :units, through: :courses
end
