class Person < ApplicationRecord
  validates :name, presence: { if: -> { social_name.blank? } }
  validates :social_name, presence: { if: -> { name.blank? } }
  validates :email, uniqueness: true, presence: true, email_address: true
  validates :cpf, cpf: { if: -> { cnpj.blank? } }, uniqueness:  { if: -> { !cpf.blank? } }
  validates :cnpj, cnpj: { if: -> { cpf.blank? } }, uniqueness: { if: -> { !cnpj.blank? } }
  validates :rg, uniqueness: true
  validates :uf_expediter_rg, length: { is: 2 }
  validates :active, inclusion: { in: [true, false] }

  has_many :telephones, dependent: :destroy
  has_many :addresses, dependent: :destroy
  has_many :contact_emails, dependent: :destroy
  has_many :quotes

  belongs_to :user
  belongs_to :profile
  belongs_to :buy_intention
end
