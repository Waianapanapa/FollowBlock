
class User < ActiveRecord::Base
  extend Enumerize

  devise :database_authenticatable, :registerable, :recoverable,