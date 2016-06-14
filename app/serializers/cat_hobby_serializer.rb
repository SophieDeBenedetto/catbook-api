class CatHobbySerializer < ActiveModel::Serializer
  attributes :id, :hobby_name

  def hobby_name
    object.hobby.name
  end
end
