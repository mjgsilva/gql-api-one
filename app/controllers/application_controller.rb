# frozen_string_literal: true

class ApplicationController < ActionController::API
  def authenticate_user!
    if user_signed_in?
      super
    else
      head :unauthorized
    end
  end
end
