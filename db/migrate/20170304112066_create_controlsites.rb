class CreateControlsites < ActiveRecord::Migration[5.0]
  def change
    create_table :controlsites do |t|
      t.string :logo
      t.string :facebook
      t.string :twitter
      t.string :youtube
      t.string :pinterest
      t.string :google
      t.string :plus
      t.text :ads1
      t.text :ads2
      t.text :ads3
      t.text :ads4
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
