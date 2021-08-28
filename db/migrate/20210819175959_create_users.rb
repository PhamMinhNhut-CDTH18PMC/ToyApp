class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      
      t.string :name
      t.string :email

      #Ex:- :null => false
    end
  end
  change_column :users, :id, :int, null: false, unique: true, auto_increment: true,  primary_key: true

  #Ex:- change_column("admin_users", "email", :string, :limit =>25)
end
