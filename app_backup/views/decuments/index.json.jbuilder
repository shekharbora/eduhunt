json.array!(@decuments) do |decument|
  json.extract! decument, :id, :subject, :title, :file, :description
  json.url decument_url(decument, format: :json)
end
