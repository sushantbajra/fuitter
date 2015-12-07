class AddAccountIdToFreeAccount < ActiveRecord::Migration
  def change
    add_column :free_accounts, :account_id, :string
  end
end
