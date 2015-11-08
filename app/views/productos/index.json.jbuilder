json.array!(@productos) do |producto|
  json.extract! producto, :id, :producto, :descripcion, :precio
  json.url producto_url(producto, format: :json)
end
