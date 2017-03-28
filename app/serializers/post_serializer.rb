class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body
  def editable
    scope == object.user
  end
end
