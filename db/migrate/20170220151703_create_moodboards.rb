class CreateMoodboards < ActiveRecord::Migration[5.0]
  def change
    create_table :moodboards do |t|
      t.string :project_name
      t.text :brief
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
