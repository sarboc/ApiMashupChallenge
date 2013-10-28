class UsersController < ApplicationController

	def new
	end


	def create
		@new_user = User.create(params[:user])
		sign_in(@new_user)

		redirect_to root
	end

	def show
		@user = User.find(params[:id])
	end

end
