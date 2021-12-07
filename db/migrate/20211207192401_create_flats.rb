class CreateFlats < ActiveRecord::Migration[6.1]
  def change
    create_table :flats do |t|
      t.string :kind, null: false
      t.string :space, null: false
      t.string :address, null: false
      t.string :address_description
      t.string :city, null: false
      t.string :zip, null: false
      t.string :country, null: false
      t.integer :guests, null: false
      t.integer :beds, null: false
      t.integer :bedrooms, null: false, default: 1
      t.integer :bathrooms, null: false, default: 1
      t.string :standouts
      t.string :favorites
      t.string :safety
      t.string :headline, unique: true
      t.string :highlights
      t.text :description, null: false

      t.timestamps
    end
  end
end
