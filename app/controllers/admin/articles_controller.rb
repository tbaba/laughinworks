class Admin::ArticlesController < ApplicationController
  layout 'admin'

  def index
    @articles = Article.order('created_at desc').page params[:page]
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])

    if @article.save!
      redirect_to [:admin, @article]
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update_attributes params[:article]
      redirect_to [:admin, @article]
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])

    @article.destroy
    redirect_to :index
  end
end
