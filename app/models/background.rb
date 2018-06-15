class Background < ApplicationRecord
  belongs_to :main
  mount_uploader :backgroundimg, BackgroundimgUploader
end
