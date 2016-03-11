class RemoveColumnFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :integer, :string
  end
end
