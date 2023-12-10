class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  belongs_to :pessoa, inverse_of: :user
  before_validation :build_associated_pessoa, on: :create
  after_destroy :destroy_pessoa

  private

  def build_associated_pessoa
    build_pessoa(tipoPessoa: 'usuario') unless pessoa.present?
  end

  def destroy_pessoa
    pessoa.destroy
  end
end
