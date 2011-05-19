class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
	end
  	def new
  		@title = "Sign up"
  	end
  	
  	def index
  		@user = User.limit(10)
  	end
end
