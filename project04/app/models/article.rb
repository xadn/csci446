class Article < ActiveRecord::Base
  
  def initialize(*params)
    super(*params)
    self.number_of_edits = 0
  end
  
  def increment_edits
    self.number_of_edits += 1
  end
    
  
  # validation
  validates_presence_of :title, :author_name, :body
  validates_uniqueness_of :title
  
end