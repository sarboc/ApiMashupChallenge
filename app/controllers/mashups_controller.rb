class MashupsController < ApplicationController
	def index
		@mashups = Mashup.all
		@mashups.each do |mashup|
			mashup["apis"] = mashup.apis
		end
	end

	def show
		@mashup = Mashup.find(params[:id])
		@mashup["apis"] = @mashup.apis

	end

	def new
		@mashup = Mashup.new
		apis = Api.all
		@api_list = []
		apis.each do |api|
			@api_list << [api.name, api.id]
		end

		if params[:apis]
			@selected = params[:apis].split("-").map{ |id| id.to_i }
		end

	end

	def create
		new_mashup = Mashup.create(params[:mashup])
		
		selected_apis = params[:api_id]
		apis = []
		selected_apis.each do |id|
			apis << Api.find(id)
		end

		new_mashup.apis << apis

		redirect_to new_mashup
	end

	def edit
		@mashup = Mashup.find(params[:id])

		apis = Api.all
		@api_list = []
		apis.each do |api|
			@api_list << [api.name, api.id]
		end

		@selected = []
		selected_apis = @mashup.apis
		selected_apis.each do |api|
			@selected << api.id
		end

	end

	def update
		# find mashup and update basic attributes (name, url, description)
		found_mashup = Mashup.find(params[:id])
		found_mashup.update_attributes(params[:sample])

		selected_apis = params[:api_id]
		# selected_apis.map!{|api| api.to_i }
		
		# create array of existing api_ids based on join record
		existing_apis = []
		found_mashup.apis.each do |api|
			existing_apis << api.id
		end

		# compare existing apis to those selected on the form
		# if selected_apis includes an existing_api, do nothing and remove it from the selected_apis list
		# if selected_apis does not include existing_api, remove the join record and remove it from the selected_apis list
		existing_apis.each do |api|
			if selected_apis.include?(api)
				selected_apis.pop
			else 
				found_mashup.apis.delete(Api.find(api))
			end
		end

		# Any leftover apis in the list are new records. Create them
		selected_apis.each do |api|
			found_mashup.apis << Api.find(api)
		end

		redirect_to found_mashup
	end

	def destroy
		Mashup.delete(params[:id])
		redirect_to mashups_path
	end

end
