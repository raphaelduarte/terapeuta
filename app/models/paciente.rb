class Paciente < ApplicationRecord
  belongs_to :pessoa
  belongs_to :user

  has_one :anamnese
  has_many :consultums
end
