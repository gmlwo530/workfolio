class Post < ApplicationRecord
    has_many :images
    serialize :tag,Array
    
   
end
