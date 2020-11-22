class Bid < ActiveRecord::Base
  extend Enumerize

  belongs_to :user, required: true

  has_many :messages, -> { merge(Message.most_recent) }, dependent: :destroy
  has_many :orders, dependent: :destroy

  enumerize :area_type, in: [:urban, :rural]
  enumerize :payment_type, in: [:cash, :forward], predicates: true
  enumerize :product, in: [:corn, :soy, :wheat, :sorghum]
  enumerize :status, in: [:available, :progress, :purchased, :paid, :released, :delivered], default: :available, predicates: true

  validates :user, :product, :quantity, :pr