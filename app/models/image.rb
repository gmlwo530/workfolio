class Image < ApplicationRecord
    mount_uploaders :images, ImageUploader
    serialize :images, JSON 
    belongs_to :post
end
