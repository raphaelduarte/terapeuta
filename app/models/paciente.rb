class Paciente < ApplicationRecord
  belongs_to :pessoa, inverse_of: :paciente
  belongs_to :user

  has_one :anamnese
  has_many :consultums
  

  accepts_nested_attributes_for :pessoa

  before_validation :build_associated_pessoa, on: :create

  private

  def build_associated_pessoa
    build_pessoa(tipoPessoa: 'paciente') unless pessoa.present?
  end
end
