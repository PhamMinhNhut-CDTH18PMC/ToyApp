class CreateMicroposts < ActiveRecord::Migration[6.1]
  def change
    create_table :microposts do |t|
      t.text :content
      t.integer :user_id

      #Ex:- :null => false
    end
  end
  change_column :microposts, :id, :int, null: false, unique: true, auto_increment: true,  primary_key: true
end
