class Email < ApplicationRecord
  belongs_to :pessoa, inverse_of: :user
end
