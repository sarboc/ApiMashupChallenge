class ChallengesController < ApplicationController
	def index
	end

	def show
		@apis = []
		@api_ids = ""
		@level = 2

		possible_apis = []
		Api.all.each do |api|
			possible_apis << api.id
		end

		max = possible_apis.count - 1
		
		until @apis.count == @level
			random = rand(0..max)
			random_api = Api.find(possible_apis[random])
			
			if random_api && !@apis.include?(random_api)
				@apis << random_api
				@api_ids += random_api.id.to_s
			end

			@api_ids += "-" if @apis.count < @level
			
		end

	end
end
