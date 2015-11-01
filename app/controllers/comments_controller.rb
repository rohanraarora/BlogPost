class CommentsController < ApplicationController
  def create
   @article = Article.find(params[:article_id])
   @comment = @article.comments.new(comment_params)
   @comment.user = current_user
   @comment.save
   redirect_to article_path(@article)
 end

 private
   def comment_params
     params.require(:comment).permit(:content)
   end
end
