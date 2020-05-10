class Picture < ApplicationRecord
  mount_uploader :picture_file, PictureUploader
  belongs_to :user
end
