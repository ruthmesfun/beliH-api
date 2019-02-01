class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.string :title
      t.string :description
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
