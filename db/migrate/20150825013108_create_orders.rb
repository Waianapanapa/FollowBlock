class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, null: false, index: true, foreign_key: true
      t.references :bid, null: false, index: true, foreign_key: true
      t.string :st