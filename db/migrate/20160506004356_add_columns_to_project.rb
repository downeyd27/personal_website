class AddColumnsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :technology, :string
    add_column :projects, :purpose, :string
    add_column :projects, :image, :string
  end
end
