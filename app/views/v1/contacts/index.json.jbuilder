json.data do
  json.array! @contacts, :id, :first_name, :last_name, :email
end