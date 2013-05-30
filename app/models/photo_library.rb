class PhotoLibrary < ActiveRecord::Base
  attr_accessible :photograph_id, :user_id

  belongs_to :user
  belongs_to :photograph 
end
