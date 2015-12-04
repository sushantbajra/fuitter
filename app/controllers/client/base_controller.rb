module Client
  class BaseController < ApplicationController
    before_action :authenticate_user!, :init_api

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
          redirect_to :client_dashboard, alert: 'Sorry your page was not found'
          return false
        end
      end
    end

    def valid_template
      templates = Template.templates
      redirect_to :client_dashboard, alert: 'Sorry the template was not found' unless templates.include? params[:template_name]
    end
  end
end
