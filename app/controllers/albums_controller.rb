class AlbumsController < OpenReadController
  before_action :set_album, only: [:update, :destroy]
  before_action :find_album, only: [:show, :update, :destroy]


  def index
    if params[:genre].blank?
      @albums = Album.all.order("created_at DESC")
    else
      @genre_id = Genre.find_by(name: params[:genre]).id
      @albums = Album.where(:genre_id => @genre_id).order("created_at DESC")
    end

    render json: @albums
  end

  def show
    render json: @album
  end

  def new
    @album = current_user.albums.build
    @genres = Genre.all.map { |genre| [genre.name, genre.id] }
  end

  def create
    @album = current_user.albums.build(album_params)
    @album.genre_id = params[:genre_id]

    if @album.save
      render json: @album, status: :created, location: @album
    else
      render json: @album.errors, status: :unprocessable_entity
    end
  end

  def update
    @album.genre_id = params[:genre_id]
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

  def set_album
    @album = current_user.albums.find(params[:id])
  end

  def find_album
    @album = Album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(:title, :description, :artist, :genre_id)
  end

  private :find_album, :album_params, :set_album

end
