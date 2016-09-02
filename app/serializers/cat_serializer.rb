class CatSerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :weight, :temperament, :hobby_ids
  # has_many :hobbies

  def hobby_ids
    object.hobbies.map(&:id)
  end
end
