class CreatePayRecords < ActiveRecord::Migration
  def change
    create_table :pay_records do |t|
      t.references :member
      t.references :user
      t.float :price
      t.timestamps null: false
    end
  end
end
