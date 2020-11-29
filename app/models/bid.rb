class Bid < ActiveRecord::Base
  extend Enumerize

  belongs_to :user, required: true

  has_many :messages, -> { merge(Message.most_recent) }, dependent: :destroy
  has_many :orders, dependent: :destroy

  enumerize :area_type, in: [:urban, :rural]
  enumerize :payment_type, in: [:cash, :forward], predicates: true
  enumerize :product, in: [:corn, :soy, :wheat, :sorghum]
  enumerize :status, in: [:available, :progress, :purchased, :paid, :released, :delivered], default: :available, predicates: true

  validates :user, :product, :quantity, :price, :city, :state,
            :area_type, :payment_type, :number_of_days, presence: true
  validates :payment_term, presence: true, if: :forward?
  validates :unpaved_road, presence: true, if: :rural_area?

  validates :number_of_days, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :payment_term, numericality: { only_integer: true, greater_than_or_equal_to: 1