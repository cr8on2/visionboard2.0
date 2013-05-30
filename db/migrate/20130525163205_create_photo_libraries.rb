class CreatePhotoLibraries < ActiveRecord::Migration
  def change
    create_table :photo_libraries do |t|
      t.integer :user_id
      t.integer :photograph_id

      t.timestamps
    end
  end
end
