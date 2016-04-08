class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :username
      t.string :password_digest
      t.boolean :sex,default: 0
      t.integer :age,default: 0
      t.integer :height
      t.float   :price
      t.boolean :del,default: 1
      t.timestamps null: false
      t.index :username , unique: true
    end
  end
end
