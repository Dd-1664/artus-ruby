class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def add
    # Article.create (title: params[:title]), (author: params[:author]), (article_text: params[:text]), (article_date: params[:date])
    # @article = Article.create(params[:article])
    Article.create title: params[:title]

    redirect_to "/display"
  end

  def show
    @article = Article.find(params[:id])
  end
end
