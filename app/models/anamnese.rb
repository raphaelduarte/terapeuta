class Anamnese < ApplicationRecord
  belongs_to :user
  belongs_to :paciente

  has_one :historia_doenca_atual
  has_one :historia_familiar
  has_one :historia_medica_pregressa
  has_one :historia_psicologica_psiquiatrica
  has_one :historia_sexual_reprodutiva
  has_one :queixa_principal
  has_one :revisao_habito
  has_one :revisao_sistema

end
