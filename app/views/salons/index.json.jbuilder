json.array!(@salons) do |salon|
  json.extract! salon, :id, :name, :description, :established_on, :start_at, :close_at, :lunch_hour
  json.url salon_url(salon, format: :json)
end
