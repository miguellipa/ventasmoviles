json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :fecha, :total
  json.url pedido_url(pedido, format: :json)
end
