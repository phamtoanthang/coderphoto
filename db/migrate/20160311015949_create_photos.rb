class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :username
      t.string :string
      t.string :caption
      t.string :text
      t.string :created_at
      t.string :datetime
      t.string :likes_count
      t.string :integer
      t.string :url
      t.string :string

      t.timestamps null: false
    end
  end
end
