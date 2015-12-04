json.array!(@precencia) do |precencium|
  json.extract! precencium, :id, :hora, :observacion, :persona_id, :producto_id, :cantidad, :nombre_precencia, :cliente_id, :usuario_id
  json.url precencium_url(precencium, format: :json)
end
