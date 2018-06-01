class MainsController < ApplicationController
before_action :authenticate_user!, except: [:show]

def show
  @main = Main.find_by(id: '1')
end

def edit
	@main = Main.find_by(id: '1')
end

def update
    @main = Main.find_by(id: '1')
 
    if @main.update(main_params)
      redirect_to @main
    else
      render 'edit'
    end
  end

def destroy
    @main = Main.find(params[:id])
    @main.destroy
 
    redirect_to mains_path
  end

private

	def main_params
		params.require(:main).permit(:shop, :contact_mail, :contact_no, :address)
	end
end
