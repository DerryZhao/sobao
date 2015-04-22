class AddColumnForArticles < ActiveRecord::Migration
  def change
  	add_column :articles, :hit_count, :integer ,:default=>0
  end
end
