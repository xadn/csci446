class Article < ActiveRecord::Base
  
  belongs_to :author
  
  # validation
  validates_presence_of :title
  
  validates_presence_of :body  
  
  before_save :increment_edits  
  
  cattr_reader :per_page
    @@per_page = 3
  
  private
    
    def increment_edits
      self.number_of_edits += 1 unless self.new_record?
    end
  
end