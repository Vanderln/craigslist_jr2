class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string  :title
      t.string  :url_slug
      t.timestamps
    end
  end
end
