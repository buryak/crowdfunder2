json.array!(@rewards) do |reward|
  json.extract! reward, :id, :project_id, :quantity, :description, :value
  json.url reward_url(reward, format: :json)
end
