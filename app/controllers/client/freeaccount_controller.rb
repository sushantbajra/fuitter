module Client
  class FreeaccountController < BaseController
    def save
      FreeAccount.create_free_account(session[:user_id], params[:page_id], params[:template_name])
    end
  end
end
