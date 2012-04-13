class SessionsController < ApplicationController
  def create
    session[:email] = auth_hash[:info][:email]
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env["omniauth.auth"]
  end
end