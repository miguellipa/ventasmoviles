json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :usuario, :password
  json.url usuario_url(usuario, format: :json)
end
