class Pessoa < ApplicationRecord
  has_one :user, inverse_of: :pessoa
  has_many :emails, inverse_of: :pessoa
  has_one :nome_completo
  has_many :profissaos
  has_many :telefones
end
