class CreatePhotographs < ActiveRecord::Migration
  def change
    create_table :photographs do |t|
      t.string :image
      t.string :photo_caption
      t.string :comment
      t.string :tags

      t.timestamps
    end
  end
end
