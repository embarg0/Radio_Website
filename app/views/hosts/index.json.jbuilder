json.array!(@hosts) do |host|
  json.extract! host, :id, :first_name, :last_name, :stage_name, :date_of_birth, :rating, :contract_start_date, :contract_end_date, :salary
  json.url host_url(host, format: :json)
end
