class Slideshow < ActiveRecord::Base
  attr_accessible :title, :user_id

  belongs_to :user

  has_many :photo_arrays
  has_many :photographs, :through => :photo_arrays

  has_many :soundtracks
  has_many :songs, :through => :soundtracks


end
