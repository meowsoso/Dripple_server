class Api::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
    before_action :authenticate_user
  
    def current
      render json: current_user.as_json(only: %i(id email))
    end
  end