class ChallengesController < ApplicationController
	def index
	end

	def show
		@apis = []
		possible_apis = []
		Api.all.each do |api|
			possible_apis << api.id
		end

		max = possible_apis.count - 1
		
		until @apis.count == 2
			random = rand(0..max)
			random_api = Api.find(possible_apis[random])
			if random_api && !@apis.include?(random_api)
				@apis << random_api
			end
		end

	end
end
