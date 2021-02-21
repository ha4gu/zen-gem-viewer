class CreateHostingAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :hosting_accounts do |t|
      t.string :type, null: false
      t.string :username
      t.string :password
      t.string :workspace
      t.string :token
      t.string :organization
      t.string :custom_name

      t.timestamps
    end
  end
end
