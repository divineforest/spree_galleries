class CreateGalleryItems < ActiveRecord::Migration
  def self.up
    create_table :gallery_items do |t|
      t.string :title
      t.string :caption

      t.string :attachment_content_type
      t.string :attachment_file_name
      t.integer :attachment_size
      t.datetime :attachment_updated_at
      t.integer  :attachment_width
      t.integer  :attachment_height

      t.integer :gallery_id

      t.timestamps
    end
  end

  def self.down
    drop_table :gallery_items
  end
end
