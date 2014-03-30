json.array!(@hosts_shows) do |hosts_show|
  json.extract! hosts_show, :employee_number, :show_number, :host_start_year, :host_start_month
  json.url hosts_show_url(hosts_show, format: :json)
end