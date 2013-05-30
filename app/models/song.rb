class Song < ActiveRecord::Base
  attr_accessible :album, :artist, :mp3, :title

	has_many :playlists
	has_many :users, :through => :playlists

	has_many :sountracks
	has_many :slideshows, :through => :soundtracks

end
