class UsersController < ApplicationController
	skip_before_filter :authenticate, only: [:new, :create]
	def new
	end


	def create
		@new_user = User.create(params[:user])
		sign_in(@new_user)

		redirect_to root_path
	end

	def show
		@user = User.find(params[:id])
	end

end
