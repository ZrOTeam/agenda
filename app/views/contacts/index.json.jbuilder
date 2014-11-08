json.array!(@contacts) do |contact|
  json.extract! contact, :id, :group_id, :first_name, :last_name, :birthday, :email, :celphone, :phone, :address, :comments
  json.url contact_url(contact, format: :json)
end
