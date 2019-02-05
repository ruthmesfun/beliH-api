class LessonSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :objective, :content, :video, :unit_id, :completed
  belongs_to :unit

end
