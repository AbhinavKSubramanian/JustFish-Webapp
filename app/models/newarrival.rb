class Newarrival < ApplicationRecord
  belongs_to :main
  mount_uploader :newarrivalimg, NewarrivalimgUploader
end
