class Author < ActiveRecord::Base
   
   has_many :articles
	
	has_attached_file :photo

	validates_presence_of :name
	validate :exclude_author_sally
	
	def to_s
		name
	end
	
	 private
	 
    def exclude_author_sally
      errors.add("Author must not be named Sally.") if name.downcase.include? "sally"
    end
end