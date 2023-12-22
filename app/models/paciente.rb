class Paciente < ApplicationRecord
  belongs_to :pessoas
  belongs_to :user

  has_one :anamnese, inverse_of: :paciente
  has_many :consultums, inverse_of: :paciente
  

  accepts_nested_attributes_for :anamnese,
                                :consultums

  before_validation :build_associated_pessoa, on: :create

  private

  def build_associated_pessoa
    build_pessoa(tipoPessoa: 'paciente') unless pessoa.present?
  end
end
