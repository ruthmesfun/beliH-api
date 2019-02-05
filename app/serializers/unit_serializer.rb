class UnitSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :lessons, :course_id
  belongs_to :course
  has_many :lessons
end
