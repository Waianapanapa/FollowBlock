class AddProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile, :jsonb, null: false, default: "{}"
    add_index :users, :profile, using: :gin
  end
end
