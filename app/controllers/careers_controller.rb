class CareersController < ApplicationController
before_action :authenticate_user!, except: [:show]
def index
	 @careers = Career.all
  end

  def show
    @career = Career.find(params[:id])
  end

  def new
    @career = Career.new
  end

  def edit
    @career = Career.find(params[:id])
  end

  def create
    @career = Career.new(career_params)
    if @career.save
      redirect_to @career
    else
      render 'new'
    end
  end

  def update
    @career = Career.find(params[:id])
    if @career.update(career_params)
      redirect_to @career
    else
      render 'edit'
    end
  end
  
  def destroy
    @career = Career.find(params[:id])
    @career.destroy
 
    redirect_to root_path
  end

  private
    def career_params
      params.require(:career).permit(:career_name, :career_descp)
    end

end
