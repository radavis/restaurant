class CommentsController < ApplicationController
  def index
    @menu_item = MenuItem.find(params[:menu_item_id])
    @comments = @menu_item.comments
  end

  def show
  end

  def create
    @menu_item = MenuItem.find(params[:menu_item_id])
    @comment = @menu_item.comments.build(comment_params)

    if @comment.save
      redirect_to @menu_item, notice: "Your comment was created successfully."
    else
      redirect_to @menu_item, notice: "There was an issue with your comment. Please try again."
    end
  end

  private
  def comment_params
     params.require(:comment).permit(:content, :menu_item_id)
  end
end



