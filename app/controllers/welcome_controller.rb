class WelcomeController < ApplicationController

	def index
    end

    def show
     @user = User.find(params[:id]) 
    end

    def destroy 
    	byebug
       @user = User.find(params[:id]) 
    end
end
