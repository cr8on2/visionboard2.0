class Photograph < ActiveRecord::Base
  attr_accessible :comment, :image, :photo_caption, :tags, :remote_image_url

  has_many :photo_libraries
  has_many :users, :through => :photo_libraries

  has_many :photo_arrays
  has_many :slideshows, :through => :photo_arrays

  mount_uploader :image, ImageUploader

end
