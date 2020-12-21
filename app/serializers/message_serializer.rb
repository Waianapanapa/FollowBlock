class MessageSerializer < ActiveModel::Serializer
  include ActionView::Helpers::DateHelper

  attributes :id, :author, :text, :sent_at

  def author
    object.user_first_name
  end

  def sent_at
    ti