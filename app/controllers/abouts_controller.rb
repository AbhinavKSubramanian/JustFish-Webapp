class AboutsController < ApplicationController
before_action :authenticate_user!, except: [:show]

def create
  @main = Main.find_by(id: '1')
  @about = @main.abouts.create(params.require(:about).permit(:data))
  redirect_to main_path(@main)
end

def show
  @main = Main.find_by(id: '1')
  @about = @main.abouts.find_by(sl: '1')
end

def destroy
  @main = Main.find_by(id: '1')
  @about = @main.abouts.find(params[:id])
  @about.destroy
  redirect_to main_path(@main)
end

end
