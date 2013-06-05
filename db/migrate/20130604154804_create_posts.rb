class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string  :title
      t.string  :description
      t.string  :user_key
      t.integer :category_id
      t.string  :email
      t.decimal :price, :scale => 2
      t.string  :location
      t.timestamps
    end
  end
end
