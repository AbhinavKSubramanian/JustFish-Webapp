class MainsController < ApplicationController

def show
  @main = Main.find_by(num: '1')
end

end
