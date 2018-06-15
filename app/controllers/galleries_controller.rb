class GalleriesController < ApplicationController

before_action :authenticate_user!

def index
	@main = Main.find_by(id: '1')
	@galleries = @main.galleries.all
end


def show
	@main = Main.find_by(id: '1')
	@gallery = @main.galleries.find(params[:id])
end

def new
	@main= Main.find_by(id: '1')
	@gallery = @main.galleries.new
end

def create
  @main = Main.find_by(id: '1')
  @gallery = @main.galleries.create(gallery_params)
  redirect_to main_path(@main)
end

def destroy
  @main = Main.find_by(id: '1')
  @gallery = @main.galleries.find(params[:id])
  @gallery.destroy
  redirect_back fallback_location: root_path
end

private
  def gallery_params
    params.require(:gallery).permit(:galleryimg)
  end

end
