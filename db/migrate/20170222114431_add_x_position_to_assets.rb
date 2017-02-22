class AddXPositionToAssets < ActiveRecord::Migration[5.0]
  def change
    add_column :assets, :x_position, :float
  end
end
