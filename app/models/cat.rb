class Cat < ApplicationRecord
  has_many :cat_hobbies
  has_many :hobbies, through: :cat_hobbies
end
