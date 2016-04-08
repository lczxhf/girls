class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :openid
      t.index :openid , unique: true
      t.string :nickname
      t.boolean :sex
      t.string :city
      t.string :province
      t.string :country
      t.string :language
      t.string :headimgurl
      t.datetime :subscribe_time
      t.timestamps null: false
    end
  end
end
