class Endereco < ApplicationRecord
  validates :street, presence: true, length: {minimum: 2, maximum: 100}
  validates :number, presence: true
  validates :neighborhood, presence: true, length: {minimum: 2, maximum: 100}
  validates :complement, presence: true, length: {minimum: 2, maximum: 200}
  validates :city, presence: true, length: {minimum: 2, maximum: 100}
  validates :state, presence: true, length: {minimum: 2, maximum: 50}
  validates :country, presence: true, length: {minimum: 2, maximum: 50}

  belongs_to :pessoa
end
