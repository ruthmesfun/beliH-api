class UnitSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :lessons
  belongs_to :course
  has_many :lessons
end
