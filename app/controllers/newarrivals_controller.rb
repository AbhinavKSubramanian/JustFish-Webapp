class NewarrivalsController < ApplicationController
before_action :authenticate_user!
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
    params.require(:newarrival).permit(:name, :details, :pdtdate)
  end

end
