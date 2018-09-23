class Person < ApplicationRecord
  validates :name, uniqueness: true, presence: true,  if: -> { social_name.blank? }
  validates :social_name, uniqueness: true, presence: true,  if: -> { name.blank? }
  validates :email, uniqueness: true, presence: true, email_address: true
  validates :cpf, cpf: true, uniqueness: true
  validates :cnpj, cnpj: true, uniqueness: true
  validates :rg, uniqueness: true
  validates :uf_expediter_rg, length: { is: 2 }
end
