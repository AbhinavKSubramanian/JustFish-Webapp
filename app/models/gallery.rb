class Gallery < ApplicationRecord
  belongs_to :main
  mount_uploader :galleryimg, GalleryimgUploader
end
