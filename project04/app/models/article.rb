class Article < ActiveRecord::Base
  
  # validation
  validates_presence_of :title, :author_name, :body
  validate :exclude_author_sally
  
  before_save :increment_edits
  
  private
  
    def exclude_author_sally
      errors.add("Author must not be named Sally.") if author_name.downcase.include? "sally"
    end
  
    def initialize(*params)
      super(*params)
      self.number_of_edits = 0
    end
  
    def increment_edits
      self.number_of_edits += 1 unless self.new_record?
    end
  
end