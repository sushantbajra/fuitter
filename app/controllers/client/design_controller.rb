class Client::DesignController < Client::BaseController
  before_filter :data_hash
  layout false
  def home
    render template: "client/design/#{params[:template_name]}/home"
  end

  def gallery
    render template: "client/design/#{params[:template_name]}/gallery"
  end

  def events
    render template: "client/design/#{params[:template_name]}/event"
  end

  # TODO: use rails form generator

  def contact
    render template: "client/design/#{params[:template_name]}/contact"
  end

  def about
    render template: "client/design/#{params[:template_name]}/about"
  end

  # TODO: show HQ images for all the feeds with image

  def news
    render template: "client/design/#{params[:template_name]}/news"
  end

  private

  def data_hash
    @facebook_page_name = params[:page_id]
    @info = @graph_api.get_object(@facebook_page_name)
    @gallery = @graph_api.get_connection(@facebook_page_name, 'albums', fields: 'name,link, photos.fields(source)')
    @events = @graph_api.get_connection(@facebook_page_name, 'events', fields: 'location, name, start_time, cover')
    @news = @graph_api.get_connection(@facebook_page_name, 'feed')
  end
end
