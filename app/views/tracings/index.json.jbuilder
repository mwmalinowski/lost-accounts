json.array!(@tracings) do |tracing|
  json.extract! tracing, :id, :record_id, :dist_id, :inside, :shipto, :add1, :add2, :add3, :add4, :city, :st, :prod_type, :contract, :prod_no, :description, :qty, :ext_amnt, :inv_date, :sklar_id
  json.url tracing_url(tracing, format: :json)
end
