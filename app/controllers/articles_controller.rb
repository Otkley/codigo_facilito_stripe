class ArticlesController < ApplicationController
  def index
    @last_articles = Article.order(created_at: :desc).limit(6)
    @free_articles = Article.free
  end

  def show
    @last_articles = Article.order(created_at: :desc).limit(3)
    @article = policy_scope(Article).find(params[:id])
    # Este policy_scope lo utilizamos con la gema pundit en article_policy
  end

  def edit
  end

  def update
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:success] = "El articulo fue creado."
      redirect_to @article
    else
      flash[:error] = "Error al crear el articulo."
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :price, :private)
  end
end
