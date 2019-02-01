class LessonSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :objective, :content, :video, :unit_id
  belongs_to :unit

end
