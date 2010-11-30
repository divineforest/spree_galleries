class Admin::GalleryItemsController < Admin::BaseController
  resource_controller
  belongs_to :gallery

  new_action.response do |wants|
    wants.html {render :action => :new, :layout => false}
  end

  create.response do |wants|
    wants.html {redirect_to admin_gallery_gallery_items_url(@gallery)}
  end

  update.response do |wants|
    wants.html {redirect_to admin_gallery_gallery_items_url(@gallery)}
  end
end
