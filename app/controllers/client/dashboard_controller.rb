module Client
  class DashboardController < BaseController
    def index
      @pages = @graph_api.get_connection('me', 'accounts')
    end
  end
end
