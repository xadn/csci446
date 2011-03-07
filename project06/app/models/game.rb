class Game < ActiveRecord::Base
	belongs_to :user 
	
	cattr_reader :per_page
    @@per_page = 9

	validates_presence_of :title, :rating, :user

end