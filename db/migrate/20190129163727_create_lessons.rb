class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :description
      t.string :objective
      t.references :unit, foreign_key: true
      t.string :content
      t.string :video
      t.boolean :completed, :default => false

      t.timestamps
    end
  end
end
