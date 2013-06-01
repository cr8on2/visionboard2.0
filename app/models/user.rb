class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :activatable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model

  attr_accessible :email, :name, :password, :password_confirmation

  has_many :slideshows

  has_many :photolibraries
  has_many :photographs, :through => :photolibraries

  has_many :playlists
  has_many :songs, :through => :playlists

end
