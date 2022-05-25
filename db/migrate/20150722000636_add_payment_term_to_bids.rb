class AddPaymentTermToBids < ActiveRecord::Migration
  def change
    add_column :bids, :payment_term, :integer
  end
end
