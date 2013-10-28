module ChallengesHelper
	def mash_names(apis)
		names = []
		case apis.count
		when 2 then
			names << @apis[0].name[0..@apis[0].name.length/2] + @apis[1].name[@apis[1].name.length/2..@apis[1].name.length]
			names << @apis[1].name[0..@apis[1].name.length/2] + @apis[0].name[@apis[0].name.length/2..@apis[0].name.length]
		when 3 then
			names << @apis[0].name[0..@apis[0].name.length/3] + @apis[1].name[@apis[1].name.length/3..(@apis[1].name.length/3)*2] + @apis[2].name[(@apis[2].name.length/3)*2..@apis[2].name.length]
			names << @apis[1].name[0..@apis[1].name.length/3] + @apis[2].name[@apis[2].name.length/3..(@apis[2].name.length/3)*2] + @apis[0].name[(@apis[0].name.length/3)*2..@apis[0].name.length]
			names << @apis[2].name[0..@apis[2].name.length/3] + @apis[0].name[@apis[0].name.length/3..(@apis[0].name.length/3)*2] + @apis[1].name[(@apis[1].name.length/3)*2..@apis[1].name.length]
		end
	end
end
