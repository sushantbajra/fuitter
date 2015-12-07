module Client
  class ContinueController < BaseController
    before_action :valid_fb_page, :valid_template

    def check
      @domain = "#{params[:domain]}.#{params[:tld]}"
      r = Whois.whois(@domain)
      if r.available?
        redirect_to :client_checkout_total
      else
        redirect_to :client_continue, alert: 'Sorry the domain is not available'
      end
    end
  end
end
