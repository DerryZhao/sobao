class V1::ArticlesController < ApplicationController
  layout 'web_site'
  before_action :set_article, only: [:show]

  def index
  	@articles = Article.order('created_at desc').paginate :per_page=>20,:page=>params[:page]||1
  end

  def show
  end
  
  private
  	def set_article
      @article = Article.find(params[:id])
    end
end
