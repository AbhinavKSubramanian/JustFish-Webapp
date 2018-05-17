class FactsController < ApplicationController

def create
  @main = Main.find(params[:main_id])
  @fact = @main.facts.create(fact_params)
  redirect_to main_path(@main)
end

def destroy
  @main = Main.find(params[:main_id])
  @fact = @main.facts.find(params[:id])
  @fact.destroy
  redirect_to main_path(@main)
end

private
  def fact_params
    params.require(:fact).permit(:tip)
  end


end
