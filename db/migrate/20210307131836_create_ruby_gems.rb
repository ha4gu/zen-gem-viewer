class CreateRubyGems < ActiveRecord::Migration[6.1]
  def change
    create_table :ruby_gems do |t|
      t.text :name, null: false
      t.text :rubygems_org_url, null: false
      t.text :official_url
      t.text :source_code_url
      t.text :latest_version, null: false
      t.datetime :timestamp, null: false

      t.timestamps
    end
  end
end
