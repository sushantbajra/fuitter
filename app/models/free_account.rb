class FreeAccount < ActiveRecord::Base
  belongs_to :user

  def self.create_free_account(uid, account_id, template)
    if FreeAccount.where(account_id: account_id).blank?
      begin
        create! do |account|
             account.user_id = uid
             account.account_id = account_id
             account.template = template
        end
      rescue Exception => e
        nil
      end
    else
        account = FreeAccount.find_by(account_id: account_id)
        account.update({user_id: uid, template: template})
    end
  end
end
