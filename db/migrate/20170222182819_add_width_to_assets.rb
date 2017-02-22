class AddWidthToAssets < ActiveRecord::Migration[5.0]
  def change
    add_column :assets, :width, :integer
  end
end
