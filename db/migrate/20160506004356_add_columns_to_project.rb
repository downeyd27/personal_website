class AddColumnsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :technology, :string
    add_column :projects, :purpose, :string
  end
end
