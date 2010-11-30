class Admin::GalleriesController < Admin::BaseController
  resource_controller

  create.response do |format|
    format.html { redirect_to [:admin, object, :gallery_items] }
  end

end
