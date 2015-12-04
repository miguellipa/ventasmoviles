json.array!(@descuento_clientes) do |descuento_cliente|
  json.extract! descuento_cliente, :id, :descuento, :descripcion
  json.url descuento_cliente_url(descuento_cliente, format: :json)
end
