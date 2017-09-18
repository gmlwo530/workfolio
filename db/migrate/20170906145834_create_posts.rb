class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :description
      t.string :title
      t.text :tag
      t.string :image_type
      t.timestamps
    end
  end
end
