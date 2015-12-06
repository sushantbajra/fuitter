module Client
  class TemplateController < Client::BaseController
    before_action :valid_template, only: [:preview]

    def index
    end

    def preview
      render layout: 'switcheroo'
    end
  end
end
