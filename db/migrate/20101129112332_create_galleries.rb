class CreateGalleries < ActiveRecord::Migration
  def self.up
    create_table :galleries do |t|
      t.string :title, :null => false
      t.string :caption

      t.timestamps
    end
  end

  def self.down
    drop_table :galleries
  end
end
