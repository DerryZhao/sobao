class Article < ActiveRecord::Base
	belongs_to :sector, :counter_cache=>true
end
