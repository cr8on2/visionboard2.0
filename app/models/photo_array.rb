class PhotoArray < ActiveRecord::Base
  attr_accessible :photograph_id, :slideshow_id

  belongs_to :photograph
  belongs_to :slideshow 

end
