json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :provincia, :distrito, :direccion, :telefono, :ruc
  json.url cliente_url(cliente, format: :json)
end
