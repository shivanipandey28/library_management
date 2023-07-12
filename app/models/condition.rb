class Condition < ApplicationRecord
  has_many :books, dependent: :destroy
end
