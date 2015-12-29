json.array!(@works) do |work|
  json.extract! work, :id, :name, :company, :progress, :date_ini, :date_end, :service_id
  json.url work_url(work, format: :json)
end
