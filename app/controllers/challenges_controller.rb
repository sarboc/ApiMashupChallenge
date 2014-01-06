class ChallengesController < ApplicationController
	skip_before_filter :authenticate, only: [:index, :show]
	include ChallengesHelper

	def index
	end

	def show
		@level = 2
		@apis = []
		@api_ids = ""

		# level allows for future feature of user selecting how many random APIs to return
		until @apis.count == @level

			# choose a random number and find the api id of that array index
			random_api = Api.all.sample

			# if the api isn't already included in the array, add it
			# also, add it to the params string to pass to the new mashup page for pre-selection
			unless @apis.include?(random_api)
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

		@mashup_names = mash_names(@apis)


	end
end
