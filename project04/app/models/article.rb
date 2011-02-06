class Article < ActiveRecord::Base
  
  
  # validation
  validates_presence_of :title, :author_name, :body
  validates_uniqueness_of :title
  
end
