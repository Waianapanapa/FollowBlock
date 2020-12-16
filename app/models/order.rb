
class Order < ActiveRecord::Base
  extend Enumerize

  enumerize :status, in: [:open, :purchased, :paid, :released, :delivered], default: :open, predicates: true

  belongs_to :bid, counter_cache: true, required: true
  belongs_to :user, required: true

  delegate :created_at, :messages, :number_of_days, :quantity, :orders_count, :price, :product_text, to: :bid, prefix: true

  validates :status, presence: true

  scope :most_recent, -> { order(created_at: :desc) }

  def buyer
    if user.company?
      user.corporate_name
    else
      user.full_name
    end
  end
end