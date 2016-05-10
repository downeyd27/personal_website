class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :technology
      t.string :description
      t.string :purpose
      t.string :url

      t.timestamps null: false
    end
  end
end
