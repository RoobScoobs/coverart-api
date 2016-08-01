class AlbumsController < OpenReadController
  # before_action :set_album, only: [:update, :destroy]
  before_action :find_album, only: [:show, :update, :destroy]


  def index
    @albums = Album.all.order("created_at DESC")

    render json: @albums
  end

  def show
    # render json: Album.find(params[:id])
  end

  def create
    @album = current_user.albums.build(album_params)

    if @album.save
      render json: @album, status: :created, location: @album
    else
      render json: @album.errors, status: :unprocessable_entity
    end
  end

  def update
    if @album.update(album_params)
      head :no_content
    else
      render json: @example.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @album.destroy

    head :no_content
  end

  # def set_album
  #   @album = current_user.albums.find(params[:id])
  # end

  def find_album
    @album = Album.find(params[:id])
    # render json: @album
  end

  def album_params
    params.require(:album).permit(:title, :description, :artist)
  end

  private :find_album, :album_params

end
