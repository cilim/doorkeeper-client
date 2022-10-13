class OmniauthController < ApplicationController
  def callback
    session[:auth] = request.env['omniauth.auth']

    redirect_to :root
  end
end
