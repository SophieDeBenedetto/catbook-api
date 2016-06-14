class CatSerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :weight, :temperament
  has_many :cat_hobbies
  #  attributes :id, :name, :description, :instructions, :source
  # has_many :proportions
end
