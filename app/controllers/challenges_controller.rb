class ChallengesController < ApplicationController
	skip_before_filter :authenticate, only: [:index, :show]
	
	def index
	end

	def show
		@apis = []
		@api_ids = ""
		@level = 2

		# since not all ids are still in use, create a list of all possible api ids
		possible_apis = []
		Api.all.each do |api|
			possible_apis << api.id
		end

		# set upper limit for random number generator
		max = possible_apis.count - 1
		
		# level allows for future feature of user selecting how many random APIs to return
		until @apis.count == @level

			# choose a random number and find the api id of that array index
			random = rand(0..max)
			random_api = Api.find(possible_apis[random])
			
			# if the api exists in the databse and isn't already included in the array, add it
			# also, add it to the params string to pass to the new mashup page for pre-selection
			if random_api && !@apis.include?(random_api)
				@apis << random_api
				@api_ids += random_api.id.to_s
			end

			# if the api isn't the last one in the array, add a dash after it
			# the dashes are used on the new mashups page to split the api ids
			@api_ids += "-" if @apis.count < @level

		end

		# create some fun random names for the mashup
		partial_string1 = @apis[0].name[0..@apis[0].name.length/2]
		partial_string2 = @apis[1].name[@apis[1].name.length/2..@apis[1].name.length]
		@mashup1 = partial_string1 + partial_string2

		partial_string3 = @apis[1].name[0..@apis[1].name.length/2]
		partial_string4 = @apis[0].name[@apis[0].name.length/2..@apis[0].name.length]
		@mashup2 = partial_string3 + partial_string4

	end
end
