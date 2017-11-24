class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :listing, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :max_capacity
      t.integer :price

      t.timestamps
    end
  end
end
