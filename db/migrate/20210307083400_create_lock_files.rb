class CreateLockFiles < ActiveRecord::Migration[6.1]
  def change
    create_table :lock_files do |t|
      t.belongs_to :repository, null: false, foreign_key: true
      t.string :path, null: false
      t.text :content
      t.string :custom_name
      t.datetime :timestamp

      t.timestamps
    end
  end
end
