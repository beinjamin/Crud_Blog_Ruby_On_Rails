class CreatePostsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content, limit: 456845
     
      
    end
  end
end
