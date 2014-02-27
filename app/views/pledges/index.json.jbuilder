json.array!(@pledges) do |pledge|
  json.extract! pledge, :id, :user_id, :project_id, :amount
  json.url pledge_url(pledge, format: :json)
end
