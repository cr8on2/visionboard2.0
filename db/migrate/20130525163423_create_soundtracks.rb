class CreateSoundtracks < ActiveRecord::Migration
  def change
    create_table :soundtracks do |t|
      t.integer :slideshow_id
      t.integer :song_id

      t.timestamps
    end
  end
end
