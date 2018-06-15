class NewarrivalsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]

def index
	@main = Main.find_by(id: '1')
	@newarrivals = @main.newarrivals.all
end


def show
	@main = Main.find_by(id: '1')
	@newarrival = @main.newarrivals.find(params[:id])
end

def create
  @main = Main.find_by(id: '1')
  @newarrival = @main.newarrivals.create(newarrival_params)
  redirect_to main_path(@main)
end

def destroy
  @main = Main.find_by(id: '1')
  @newarrival = @main.newarrivals.find(params[:id])
  @newarrival.destroy
  redirect_to main_path(@main)
end

private
  def newarrival_params
    params.require(:newarrival).permit(:name, :details, :pdtdate, :newarrivalimg)
  end

end
