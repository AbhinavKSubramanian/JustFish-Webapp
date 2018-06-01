class FactsController < ApplicationController
before_action :authenticate_user!
def create
  @main = Main.find_by(id: '1')
  @fact = @main.facts.create(fact_params)
  redirect_to main_path(@main)
end

def destroy
  @main = Main.find_by(id: '1')
  @fact = @main.facts.find(params[:id])
  @fact.destroy
  redirect_to main_path(@main)
end

private
  def fact_params
    params.require(:fact).permit(:tip)
  end


end
