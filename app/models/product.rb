class Product < ApplicationRecord
  belongs_to :category
  mount_uploader :pdtimg, PdtimgUploader
end
