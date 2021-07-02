class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:id])
    @article.commentscreate(comments_params)
  
    redirect_to article_path(@article)
  end  
    

    private

  def comments_params
    params.require(:comments).permit(:author, :body)   
  end
    

end
