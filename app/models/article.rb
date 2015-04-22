class Article < ActiveRecord::Base
	belongs_to :sector, :counter_cache=>true

	#article search
	def self.search(sector_id,page)
		Article.where(sector_id: sector_id).order('created_at desc').paginate :per_page=>20,:page=>page||1
	end
	# private
	#article hit
	def hit
		update_attributes(hit_count: hit_count+1)
	end
end
