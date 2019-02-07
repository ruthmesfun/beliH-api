class CreateLessonComments < ActiveRecord::Migration[5.2]
  def change
    create_table :lesson_comments do |t|
      t.references :teacher, foreign_key: true
      t.references :student, foreign_key: true
      t.references :lesson, foreign_key: true
      t.string :comment

      t.timestamps
    end
  end
end
