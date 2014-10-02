class Anuncio < ActiveRecord::Base
  belongs_to :user
  mount_uploader :image, ImageUploader
  
  validates :description, presence: true
end
