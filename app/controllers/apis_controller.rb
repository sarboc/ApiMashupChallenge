class ApisController < ApplicationController
	def index
		@apis = Api.all
		@apis.each do |api|
			api["mashups"] = api.mashups
		end
	end

	def show
		@api = Api.find(params[:id])
		@api["mashups"] = @api.mashups
	end

	def new
		@api = Api.new(requires_key: "yes")
	end

	def create
		new_api = Api.create(params[:api])
		redirect_to new_api
	end

	def edit
		@api = Api.find(params[:id])
	end

	def update
		found_api = Api.find(params[:id])
		found_api.update_attributes(params[:sample])
		redirect_to found_api
	end

	def destroy
		Api.delete(params[:id])
		redirect_to apis_path
	end

end
