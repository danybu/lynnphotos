class CreateLynnPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :lynn_photos do |t|
      t.string :photo
      t.datetime :year
      t.text :city_taken
      t.text :country_taken

      t.timestamps
    end
  end
end
