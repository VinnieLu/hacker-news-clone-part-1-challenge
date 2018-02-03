class CreateUsers < ActiveRecord::Migration[5.0]
  def change
  	create_table :users do |k|
  		k.string :first_name
  		k.string :email
  		k.string :password_hash

  		k.timestamps
  	end
  end
end
