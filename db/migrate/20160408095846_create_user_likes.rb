class CreateUserLikes < ActiveRecord::Migration
  def change
    create_table :user_likes do |t|
      t.references :member
      t.references :user
      t.boolean    :del,default: 1
      t.timestamps null: false
    end
  end
end
