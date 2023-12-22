class Documento < ApplicationRecord
  belongs_to :pessoas

  has_one :cpf
  has_many :cnpjs
end
