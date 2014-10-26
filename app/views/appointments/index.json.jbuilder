json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :parent_names, :phone_numbers, :email_addresses, :children_names, :children_ages, :other_info, :tour_date
  json.url appointment_url(appointment, format: :json)
end
