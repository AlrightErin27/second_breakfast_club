class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :author
      t.datetime :posted_at

      t.timestamps
    end
  end
end
