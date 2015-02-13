json.array!(@coolstuffs) do |coolstuff|
  json.extract! coolstuff, :id
  json.url coolstuff_url(coolstuff, format: :json)
end
