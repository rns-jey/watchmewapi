# frozen_string_literal: true

json.data do
  json.account do
    json.partial! 'v1/accounts/account', account:
  end
end
