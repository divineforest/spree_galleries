class Gallery < ActiveRecord::Base
  has_many :gallery_items, :dependent => :destroy

  validates_presence_of :title

  default_scope :order => 'created_at DESC'
end
