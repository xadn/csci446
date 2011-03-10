class Game < ActiveRecord::Base
	belongs_to :user 
	
	cattr_reader :per_page
	@@per_page = 9

	validate :rating_range
	validates_presence_of :title, :rating, :user
	
	@@RATING_LABELS = ["Horrible", "Meh", "Delicous", "Mind blowing"]
	
	def rating_label
		@@RATING_LABELS[rating]
	end
	
	private
	def rating_range
		errors.add "Please choose a valid rating" unless rating.between?(0,3)
	end
	
end