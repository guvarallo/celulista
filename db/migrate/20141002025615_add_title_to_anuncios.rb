class AddTitleToAnuncios < ActiveRecord::Migration
  def change
    add_column :anuncios, :title, :string
  end
end
