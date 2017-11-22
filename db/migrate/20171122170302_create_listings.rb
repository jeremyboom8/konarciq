class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :caption
      t.text :description
      t.integer :price
      t.string :address
      t.float :longitude
      t.float :latitude
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
