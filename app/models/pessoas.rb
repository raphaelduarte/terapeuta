class Pessoas < ApplicationRecord
  has_one :user, inverse_of: :Pessoas
  has_many :emails, inverse_of: :Pessoas
  has_one :nome_completo, inverse_of: :Pessoas
  has_many :profissaos, inverse_of: :Pessoas
  has_many :telefones, inverse_of: :Pessoas
  has_many :enderecos, inverse_of: :Pessoas
  has_one :documento, inverse_of: :Pessoas
  has_one :estado_civil, inverse_of: :Pessoas
  has_one :paciente, inverse_of: :Pessoas

  accepts_nested_attributes_for :nome_completo,
                                :user,
                                :profissaos,
                                :telefones,
                                :enderecos,
                                :documento,
                                :estado_civil,
                                :emails,
                                :paciente
end
