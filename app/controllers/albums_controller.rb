class AlbumsController < ApplicationController

def index
  @albums = Album.all
end

def show
  @album = Album.find_by(id: [params[:id], params[:album_id]])
  @tracks = @album.track
end

end
