class Pessoa < ApplicationRecord
  has_one :user, inverse_of: :pessoa
end
