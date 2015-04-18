json.array!(@sectors) do |sector|
  json.extract! sector, :id, :name, :rank
  json.url sector_url(sector, format: :json)
end
