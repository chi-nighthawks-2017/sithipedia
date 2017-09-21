class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    @featured_articles = @articles.sample(5)
  end

  def search
    @articles = Article.search(params[:request])
  end

  def show
    @article = Article.find_by(id: params[:id])
  end

  def new
    authorize_sith
    @article = Article.new
  end

  def create
    authorize_sith
    @article = Article.new(params_w_author_editor)
    if @article.save
      redirect_to '/articles'
    else
      @errors = @article.errors.full_messages
      render '/articles/new'
    end
  end

  def edit
    @article = Article.find(params[:id])
    authorize_editor(@article)
  end

  def update
    @article = Article.find(params[:id])
    authorize_editor(@article)
    if @article.update(params_with_editor)
      redirect_to @article
    else
      @errors = @article.errors.full_messages
      render :edit
    end

  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end

    def params_with_editor
      article_params.merge({editor_id: current_user.id})
    end

    def params_w_author_editor
      params_with_editor.merge({author_id: current_user.id})
    end

end
