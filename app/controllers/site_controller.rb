class SiteController < ApplicationController
  def index
    @tags = Node.order("updated_at DESC").all
    @authors = Author.order("updated_at DESC").all
    @articles = Article.order("updated_at DESC").all
  end
end
