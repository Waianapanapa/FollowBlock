class Bid < ActiveRecord::Base
  extend Enumerize

  belongs_to :user, required: true

  has_many :messages, -> { merge(Mess