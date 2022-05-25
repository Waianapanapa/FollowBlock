
class AddAreaTypeToBids < ActiveRecord::Migration
  def up
    add_column :bids, :area_type, :string
    change_column_null :bids, :area_type, :urban
  end

  def down
    remove_column :bids, :area_type
  end
end