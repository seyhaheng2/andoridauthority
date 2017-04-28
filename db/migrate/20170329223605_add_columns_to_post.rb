class AddColumnsToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :source, :string
    add_column :posts, :url_source, :string
    add_column :posts, :via, :string
    add_column :posts, :url_via, :string
  end
end
