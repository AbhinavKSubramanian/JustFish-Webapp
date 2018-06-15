class BackgroundsController < ApplicationController
before_action :authenticate_user!

def index
	@main = Main.find_by(id: '1')
	@backgrounds = @main.backgrounds.all
end


def show
	@main = Main.find_by(id: '1')
	@background = @main.backgrounds.find(params[:id])
end

def new
	@main= Main.find_by(id: '1')
	@background = @main.backgrounds.new
end

def create
  @main = Main.find_by(id: '1')
  @background = @main.backgrounds.create(background_params)
  redirect_to main_path(@main)
end

def destroy
  @main = Main.find_by(id: '1')
  @background = @main.backgrounds.find(params[:id])
  @background.destroy
  redirect_back fallback_location: root_path
end

private
  def background_params
    params.require(:background).permit(:backgroundimg)
  end
end
