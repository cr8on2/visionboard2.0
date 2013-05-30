class Soundtrack < ActiveRecord::Base
  attr_accessible :slideshow_id, :song_id

  belongs_to :song
  belongs_to :slideshow 
  
end
