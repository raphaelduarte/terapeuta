class TipoLogradouro < ApplicationRecord
  belongs_to :casa
  belongs_to :apartamento
  
  has_one :endereco
end
