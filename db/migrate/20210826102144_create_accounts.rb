class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :password

      t.timestamps:null =>  true
      #Ex:- :null => false
    end
  end
  change_column :accounts, :id, :int, null: false, unique: true, auto_increment: true,  primary_key: true

end
