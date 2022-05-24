class AddProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile, :jsonb, null: false, defaul