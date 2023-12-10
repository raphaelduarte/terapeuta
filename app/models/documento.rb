class Documento < ApplicationRecord
  belongs_to :pessoa

  has_one :cpf
  has_many :cnpjs
end
