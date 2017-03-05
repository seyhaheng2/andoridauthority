class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :image
      t.text :description
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.datetime :published_at
      t.string :format_post

      t.timestamps
    end
  end
end
