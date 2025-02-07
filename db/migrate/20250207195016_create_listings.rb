class CreateListings < ActiveRecord::Migration[7.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.decimal :price_per_night
      t.string :location

      t.timestamps
    end
  end
end
