class Client::DashboardController < Client::BaseController
  def index
    @pages = @graph_api.get_connection('me', 'accounts')
  end
end
