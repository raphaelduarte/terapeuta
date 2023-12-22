class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  belongs_to :pessoas
  before_validation :build_associated_pessoa, on: :create
  before_destroy :destroy_pessoa
  has_many :pacientes, inverse_of: :user
  has_many :anamneses, inverse_of: :user
  has_many :consultums, inverse_of: :user

  accepts_nested_attributes_for :pacientes

  private

  def build_associated_pessoa
    build_pessoa(tipoPessoa: 'usuario') unless pessoa.present?
  end

  def destroy_pessoa
    pessoa.destroy
  end
end
