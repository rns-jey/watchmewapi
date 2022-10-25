# frozen_string_literal: true

module V1
  # Sessions Endpoints
  class SessionsController < ApplicationController
    def show
      current_user ? head(:ok) : head(:unauthorized)
    end

    def create
      @user = User.where(email: params[:email]).first

      if @user&.valid_password?(params[:password])
        jwt = WebToken.encode(@user)

        render :create, locals: { token: jwt }, status: :created
      else
        render json: { error: 'Invalid user credentials' }, status: :unauthorized
      end
    end

    def destroy
      if nilify_token && current_user.save
        head(:ok)
      else
        head(:unauthorized)
      end
    end

    private

    def nilify_token
      current_user&.authentication_token = nil
    end
  end
end
