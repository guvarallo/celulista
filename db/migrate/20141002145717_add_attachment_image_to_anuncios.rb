class AddAttachmentImageToAnuncios < ActiveRecord::Migration
  def self.up
    change_table :anuncios do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :anuncios, :image
  end
end
