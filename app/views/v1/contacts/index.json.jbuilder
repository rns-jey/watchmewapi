json.data do
  json.array! @contacts do |contact|
    json.call(
      contact,
      :id, 
      :first_name, 
      :last_name, 
      :email 
    )
  end
end