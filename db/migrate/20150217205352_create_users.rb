class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.belongs_to :post, index: true


      t.timestamps
    end
  end
end
