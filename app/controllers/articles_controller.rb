class ArticlesController < ApplicationController
  # articles GET /articles(.:format) articles#index
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end

  def new
  end
end
