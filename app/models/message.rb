
class Message < ActiveRecord::Base
  belongs_to :bid, required: true
  belongs_to :user, required: true

  validates :text, presence: true

  delegate :first_name, :full_name, to: :user, prefix: true

  scope :most_recent, -> { order(created_at: :desc) }
end