module Client
  class TemplateController < BaseController
    before_action :valid_fb_page
    before_action :valid_template, only: [:preview]

    def index
    end

    def preview
      render layout: 'switcheroo'
    end
  end
end
