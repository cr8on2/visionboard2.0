class CreatePhotoArrays < ActiveRecord::Migration
  def change
    create_table :photo_arrays do |t|
      t.integer :photograph_id
      t.integer :slideshow_id

      t.timestamps
    end
  end
end
