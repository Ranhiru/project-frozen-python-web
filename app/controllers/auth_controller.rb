class AuthController < ApplicationController
  def login
    redirect_to "/auth/facebook"
  end
end
