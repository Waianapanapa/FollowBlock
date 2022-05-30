class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :user, null: false, index: true, foreign_key: true
      t.references :bid, null: false, index: true, foreign_key: true
      t.string :text, null: false

      t.timestamps null: false
    end
  end
end
