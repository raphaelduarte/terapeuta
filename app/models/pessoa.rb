class Pessoa < ApplicationRecord
  has_one :user, inverse_of: :pessoa
  has_many :emails, inverse_of: :pessoa
  has_one :nome_completo
  has_many :profissaos
  has_many :telefones
  has_many :enderecos
  has_one :documento
  has_one :estado_civil

  accepts_nested_attributes_for :nome_completo,
                                :user,
                                :profissaos,
                                :telefones,
                                :enderecos,
                                :documento,
                                :estado_civil,
                                :emails
end
