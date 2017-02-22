class AddYPositionToAssets < ActiveRecord::Migration[5.0]
  def change
    add_column :assets, :y_position, :float
  end
end
