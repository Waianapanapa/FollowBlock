class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :user, null: false, index: true, foreign_key: true
 