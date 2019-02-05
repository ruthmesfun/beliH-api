class CourseSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :units
  has_many :students, through: :student_courses
  has_many :units
end
