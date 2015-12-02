json.array!(@personas) do |persona|
  json.extract! persona, :id, :nombres, :cargo, :cliente
  json.url persona_url(persona, format: :json)
end
