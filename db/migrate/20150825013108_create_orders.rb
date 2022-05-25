class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, null: false, index: true, foreign_key: true
      t.references :bid, null: false, index: true, foreign_key: true
      t.string :status, null: false

      t.timestamps null: false
    end
  end
end
