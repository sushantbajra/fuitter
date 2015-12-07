class SiteController < ApplicationController
  before_action :data_hash
  layout false

  def home
    render template: "client/design/#{@account.template}/home"
  end

  def gallery
    render template: "client/design/#{@account.template}/gallery"
  end

  def events
    render template: "client/design/#{@account.template}/event"
  end

  def contact
    render template: "client/design/#{@account.template}/contact"
  end

  def about
    render template: "client/design/#{@account.template}/about"
  end

  def news
    render template: "client/design/#{@account.template}/news"
  end

  private

  def data_hash
    @facebook_page_name = params[:page_id]
    @graph_api = Koala::Facebook::API.new('1409881969328029|IUH-LqmR_EBwNvSgE5NEdTGn9yw', ENV['OMNIAUTH_PROVIDER_SECRET'])
    @info = @graph_api.get_object(@facebook_page_name)
    @gallery = @graph_api.get_connection(@facebook_page_name, 'albums', fields: 'name,link, photos.fields(source)')
    @events = @graph_api.get_connection(@facebook_page_name, 'events', fields: 'location, name, start_time, cover')
    @news = @graph_api.get_connection(@facebook_page_name, 'feed')
    @account = FreeAccount.template(params[:page_id])
  end
end
