class CommentsController < RunsControllers

  def new
    puts request.params
    @run = Run.new(params[:run_id])
    @comment = Comment.new
  end

  def create
    puts params
    run = Run.new(params[:comment][:run_id])
    Comment.create(params.require(:name).permit(:body))

    redirect_to run
  end

end
