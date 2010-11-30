class GalleryItemsController < Spree::BaseController
  resource_controller
  belongs_to :gallery
end
