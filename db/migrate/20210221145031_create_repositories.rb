class CreateRepositories < ActiveRecord::Migration[6.1]
  def change
    create_table :repositories do |t|
      t.belongs_to :hosting_account, null: false, foreign_key: true
      t.string :uuid, null: false
      t.string :name, null: false
      t.string :custom_name

      t.timestamps
    end
  end
end
