json.array!(@washers) do |washer|
  json.extract! washer, :id, :name, :channel, :start_at, :intervel, :start_stop
  # json.url user_url(washer, format: :json)
end
 