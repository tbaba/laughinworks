class ArticlesController < ApplicationController
  def index
    @articles = Article.limit(10).order('created_at desc')
  end

  def show
    @article = Article.find(params[:id])
  end
end
