# frozen_string_literal: true

module V1
  # Manages the Account Model
  class AccountsController < ApplicationController
    def create
      @account = current_user.accounts.build(account_params)

      if @account.save
        render :create, status: :created
      else
        head(:unprocessable_entity)
      end
    end

    private

    def account_params
      params.require(:account).permit(:name)
    end
  end
end
