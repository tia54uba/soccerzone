class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @posts = Post.all
    @model = params[:model]
    @content = params[:content]
    @method = params[:method]
    if @model == 'post'
      @records = Post.search_for(@content, @method)
    else
      @records = User.search_for(@content, @method)
    end
  end
end
