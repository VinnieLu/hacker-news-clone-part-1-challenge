class CreatePosts < ActiveRecord::Migration[5.0]
  def change
  	create_table :posts do |k|
  		k.string :title
  		k.string :body
  		k.integer :points
  		k.integer :user_id

  		k.timestamps
  	end
  end
end
