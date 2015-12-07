module Client
  class ContinueController < BaseController
    before_action :valid_fb_page, :valid_template
  end
end
