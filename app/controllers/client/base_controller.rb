class Client::BaseController < ApplicationController
  before_action :authenticate_user!, :init_api, :valid_fb_page

  def init_api
    @graph_api = Koala::Facebook::API.new(session[:access_token], ENV['OMNIAUTH_PROVIDER_SECRET'])
  end

  def valid_fb_page
    if params[:page_id]
      begin
        @info = @graph_api.get_object(params[:page_id])
        # save_facebook_page_name_in_session(page)
        return true
      rescue Exception => e
        redirect_to :client_dashboard, alert: "Sorry your page was not found"
        return false
      end
    end
  end
end
