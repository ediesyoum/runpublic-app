class CommentsController < ApplicationController

  def new
    puts request.params
    @run = Run.find(params[:run_id])
    @comment = Comment.new
  end

  def create
    puts params
    run = Run.find(params[:comment][:run_id])
    Comment.create(params.require(:name).permit(:body))

    redirect_to run
  end

end
