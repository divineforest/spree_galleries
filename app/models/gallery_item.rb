class GalleryItem < ActiveRecord::Base
  belongs_to :gallery

  has_attached_file :attachment, 
                    :styles => SpreeGalleries::Config.attachment_styles || { :mini => '48x48>', :small => '100x100>', :normal => '220x220>', :large => '600x600>' },
                    :default_style => :normal,
                    :url => "/assets/gallery_items/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/gallery_items/:id/:style/:basename.:extension"

  # save the w,h of the original image (from which others can be calculated)
  # we need to look at the write-queue for images which have not been saved yet
  after_post_process :find_dimensions
  def find_dimensions
    temporary = attachment.queued_for_write[:original] 
    filename = temporary.path unless temporary.nil?
    filename = attachment.path if filename.blank?
    geometry = Paperclip::Geometry.from_file(filename)
    self.attachment_width  = geometry.width
    self.attachment_height = geometry.height
  end

end
