class ArticlesController < ApplicationController
  before_action :logged_in?

  def index
    @articles = Article.all
    render :index
  end

  def new
    @article = Article.new
    render :new
  end

  def show
    @article = Article.find(params[:id])
    render :show
  end

  def create
    article_params = user_params
    @article = Article.create(article_params)
    redirect_to "/articles"
  end

  def edit
  end

  def update
      article_id = params[:id]
      article = Article.find(article_id)

      # get updated data
      updated_attributes = (user_params)
      # update the article
      article.update_attributes(updated_attributes)

      #redirect to show
      redirect_to "/articles"
  end
  def destroy
    article_id = params[:id]
    article = Article.find(article_id)
    article.destroy
    redirect_to "/articles"
  end

  private
  def user_params
    params.require(:article).permit(:title, :content)
  end





end
