json.array!(@sales_reps) do |sales_rep|
  json.extract! sales_rep, :id, :name
  json.url sales_rep_url(sales_rep, format: :json)
end
