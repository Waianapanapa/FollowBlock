
class AddStatusToBids < ActiveRecord::Migration
  def change
    add_column :bids, :status, :string, null: false, default: :available
  end
end