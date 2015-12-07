class CreateFreeAccounts < ActiveRecord::Migration
  def change
    create_table :free_accounts do |t|
      t.references :user, index: true, foreign_key: true
      t.string :sub_domain
      t.string :template

      t.timestamps null: false
    end
  end
end
