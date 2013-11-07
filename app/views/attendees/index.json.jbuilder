json.array!(@attendees) do |attendee|
  json.extract! attendee, :name
  json.url attendee_url(attendee, format: :json)
end
