json.array!(@anuncios) do |anuncio|
  json.extract! anuncio, :id, :description
  json.url anuncio_url(anuncio, format: :json)
end
