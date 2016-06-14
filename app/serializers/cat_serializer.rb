class CatSerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :weight, :temperament
  has_many :hobbies
end
