class CatHobbySerializer < ActiveModel::Serializer
  attributes :id, :hobby_name
  belongs_to :cat 
  belongs_to :hobby
  
  def hobby_name
    object.hobby.name
  end
end
