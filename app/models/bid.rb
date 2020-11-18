class Bid < ActiveRecord::Base
  extend Enumerize

  belongs_to :user, required: true

  has_many :messages, -> { merge(Message.most_recent) }, dependent: :destroy
  has_many :orders, dependent: :destroy

  enumerize :area_type, in: [:urban, :rural]
  enumerize :payment_type, in: [:cash, :forward], predicates: true
  enumerize :product, in: [:corn, :