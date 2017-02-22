class AddHeightToAssets < ActiveRecord::Migration[5.0]
  def change
    add_column :assets, :height, :integer
  end
end
