class CreateAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :assets do |t|
      t.text :url
      t.references :moodboard, foreign_key: true

      t.timestamps
    end
  end
end
