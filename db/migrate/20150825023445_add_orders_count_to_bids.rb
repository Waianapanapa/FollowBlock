
class AddOrdersCountToBids < ActiveRecord::Migration
  def change
    add_column :bids, :orders_count, :integer
  end
end