class ArticlesController < ApplicationController
  def index
    @blogs = Article.order("updated_at DESC").where(template: 'blog').paginate(:page => params[:page], :per_page => 3)

  end

  def show
    @blog = Article.find_by_id(params[:id])
  end
end
