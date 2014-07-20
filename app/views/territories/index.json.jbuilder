json.array!(@territories) do |territory|
  json.extract! territory, :id, :code, :type
  json.url territory_url(territory, format: :json)
end
