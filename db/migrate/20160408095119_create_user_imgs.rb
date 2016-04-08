class CreateUserImgs < ActiveRecord::Migration
  def change
    create_table :user_imgs do |t|
      t.string :url
      t.references :user
      t.boolean :del,default: 1
      t.timestamps null: false
    end
  end
end
