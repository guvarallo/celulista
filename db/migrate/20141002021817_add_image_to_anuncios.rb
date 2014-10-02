class AddImageToAnuncios < ActiveRecord::Migration
  def change
    add_column :anuncios, :image, :string
  end
end
