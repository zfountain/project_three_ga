json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :date_name
  json.url assignment_url(assignment, format: :json)
end
