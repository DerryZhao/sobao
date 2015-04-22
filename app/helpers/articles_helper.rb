module ArticlesHelper
	#article search url
	def filter(sector_id,page)
		str = '/v1/articles/search'
		if sector_id.present?
			str += "/sector_id/#{sector_id}"
		end
		str
	end
end
