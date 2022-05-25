
class AddUnpavedRoadToBids < ActiveRecord::Migration
  def change
    add_column :bids, :unpaved_road, :integer
  end
end