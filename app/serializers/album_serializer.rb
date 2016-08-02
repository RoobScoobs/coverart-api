class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :artist, :title, :description, :user #, :genre

  def user
    object.user.id
  end

  # def genre
  #   object.object.id
  # end
end
