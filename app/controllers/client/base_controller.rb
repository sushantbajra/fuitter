class Client::BaseController < ApplicationController
  before_action :authenticate_user!, :init_api

  def init_api
    @graph_api = Koala::Facebook::API.new(session[:access_token], ENV['OMNIAUTH_PROVIDER_SECRET'])
  end
end
