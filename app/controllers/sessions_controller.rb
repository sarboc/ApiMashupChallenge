class SessionsController < ApplicationController
	skip_before_filter :authenticate, only: [:new, :create]

	def new

	end

	def create
		user = User.find_by_email(params[:user][:email])
		if user && user.authenticate(params[:user][:password])
			sign_in(user)
			redirect_to user
		else
			redirect_to "/login"
		end
	end

	def destroy
		sign_out
		redirect_to root_path
	end

end
