
class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.string :product, null: false
      t.decimal :quantity, precision: 13, scale: 3, null: false
      t.decimal :price, precision: 12, scale: 2, null: false
      t.string :city, null: false
      t.string :state, null: false