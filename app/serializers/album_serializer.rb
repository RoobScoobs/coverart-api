class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :artist, :title, :description, :user_id, :created_at #, :genre

  # def user
  #   object.user.id
  # end

  # def genre
  #   object.object.id
  # end
end
