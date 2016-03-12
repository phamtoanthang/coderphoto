class RemoveDateTimeFromPhotos < ActiveRecord::Migration
  def change
    remove_column :photos, :datetime, :string
  end
end
