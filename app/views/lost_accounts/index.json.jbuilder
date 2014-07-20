json.array!(@lost_accounts) do |lost_account|
  json.extract! lost_account, :id, :identifier
  json.url lost_account_url(lost_account, format: :json)
end
