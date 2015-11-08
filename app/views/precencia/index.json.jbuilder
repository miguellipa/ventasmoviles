json.array!(@precencia) do |precencium|
  json.extract! precencium, :id, :hora, :observacion
  json.url precencium_url(precencium, format: :json)
end
