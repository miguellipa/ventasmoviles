json.array!(@ruta) do |rutum|
  json.extract! rutum, :id, :fecha
  json.url rutum_url(rutum, format: :json)
end
