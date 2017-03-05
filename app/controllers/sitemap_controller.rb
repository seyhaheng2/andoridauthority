class SitemapController < ApplicationController
  respond_to :xml
  def index
    @posts = Post.all
  end
end
