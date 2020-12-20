
class User < ActiveRecord::Base
  extend Enumerize

  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :trackable, :validatable

  store_accessor :profile, :first_name, :last_name, :corporate_name,
                           :cpf, :cnpj, :personable_type, :phone

  has_many :bids, dependent: :destroy
  has_many :orders, dependent: :destroy

  enumerize :personable_type, in: [:company, :individual], default: :individual, predicates: true
  enumerize :role, in: [:admin, :regular], default: :regular, predicates: true

  validates :personable_type, :phone, :role, presence: true
  validates :first_name, :last_name, presence: true, if: :individual?
  validates :corporate_name, presence: true, if: :company?
  validates :cpf, cpf: true, if: :individual?
  validates :cnpj, cnpj: true, if: :company?

  def full_name
    "#{first_name} #{last_name}"
  end
end