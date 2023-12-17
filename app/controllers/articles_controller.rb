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
  end

  def create
  end
end
