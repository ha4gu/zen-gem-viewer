class AddColumnToRepositories < ActiveRecord::Migration[6.1]
  def change
    add_column :repositories, :main_branch, :string, null: false
  end
end
