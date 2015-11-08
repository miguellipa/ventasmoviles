json.array!(@tipos) do |tipo|
  json.extract! tipo, :id, :tipo, :descripcion
  json.url tipo_url(tipo, format: :json)
end
