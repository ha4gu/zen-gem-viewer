class CreateGemVersions < ActiveRecord::Migration[6.1]
  def change
    create_table :gem_versions do |t|
      t.belongs_to :lock_file, null: false, foreign_key: true
      t.belongs_to :ruby_gem, null: false, foreign_key: true
      t.text :version, null: false

      t.timestamps
    end
  end
end
