class Game < ActiveRecord::Base
	belongs_to :user 
	
	cattr_reader :per_page
	@@per_page = 9
	
	validates_presence_of :title, :rating, :user
	validate :rating_range
	
	@@RATING_LABELS = ["Horrible", "Meh", "Good", "Mind Blowing"]
	def rating
		@@RATING_LABELS[self[:rating]]
	end
	
	def ratings_list
		@@RATING_LABELS
	end
	
	private
	
	def rating_range
		errors.add "Please choose a valid rating." unless rating.between?(0,3)
	end
	
end