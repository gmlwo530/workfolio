class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :description
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
