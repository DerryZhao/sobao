class AddArticlesCountToSecotrs < ActiveRecord::Migration
  def change
  	add_column :sectors ,:articles_count,:integer, :default=>0
  end
end
