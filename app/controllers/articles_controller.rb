class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def add

    artus = Article.new
    artus.title = params[:title]
    artus.author = params[:author]
    artus.article_text = params[:text]
    artus.article_date = params[:date]
    artus.save

    # redirect_to "/display"
    #   CREATE FLAH MESSAGE FOR SUCCESSING CREATE
  end

  def show
    @article = Article.find(params[:id])
  end

  def update
    # artus = Article.find(params[:id])
    # artus.article_text = params[:text]
    # artus.save

    Article.find(params[:id]).update article_text: params[:text]

    # redirect_to "/books/#{params[:id]}"
  end

end
