class NomeCompleto < ApplicationRecord
  belongs_to :pessoas, inverse_of: :user
end
