i = 0
CSV.foreach(File.join(Rails.root, 'db', 'data.csv')) do |row|
  Thing.create(city_id: i, lat: row[0], lng: row[1])
  i = i + 1
end
