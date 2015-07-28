class Place < ActiveRecord::Base

	belongs_to :user
	has_many :comments
	geocoded_by :address
  	after_validation :geocode
	 validates :name, :presence => true, :length => { :within => 3..100 }

	validates :description, :address, :presence => true




end
