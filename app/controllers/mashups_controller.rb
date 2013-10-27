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
	end

	def create
		new_mashup = Mashup.create(params[:mashup])
		redirect_to new_mashup
	end

	def edit
		@mashup = Mashup.find(params[:id])
	end

	def update
		found_mashup = Mashup.find(params[:id])
		found_mashup.update_attributes(params[:sample])
		redirect_to found_mashup
	end

	def destroy
		Mashup.delete(params[:id])
		redirect_to mashups_path
	end
end
