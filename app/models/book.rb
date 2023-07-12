class Book < ApplicationRecord
  belongs_to :category
  belongs_to :condition
  belongs_to :user
end
