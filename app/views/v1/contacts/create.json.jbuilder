# frozen_string_literal: true

json.data do
  json.user do
    json.partial! 'v1/contacts/contact', contact:
  end
end
