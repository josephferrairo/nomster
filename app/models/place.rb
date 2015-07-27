class Place < ActiveRecord::Base

	belongs_to :user
	 validates :name, :presence => true, :length => { :within => 3..100 }

	validates :description, :address, :presence => true




end
