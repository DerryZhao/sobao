class V1::ArticlesController < ApplicationController
  layout 'blog'
  before_action :set_article, only: [:show]

  def index
  	@articles = Article.order('created_at desc').paginate :per_page=>2,:page=>params[:page]||1
  end

  def show
    @title = @article.name
  end

  def search
    @articles = Article.search(params[:sector_id],params[:page])
    render 'index'
  end
  
  private
  	def set_article
      @article = Article.find(params[:id])
      @article.hit
    end
end
