class RunsController < ApplicationController

  def index
    @runs=Run.all
  end

  def show
    @run = Run.new
    # @comments = @run.comments
  end

  def new
<<<<<<< HEAD
    # puts request.params
    # @comment = Comment.find(params[:comment_id])
    # @run = Run.new
=======
    puts request.params
    @comment = Comment.find(params[:comment_id])
    @run = Run.new
>>>>>>> ad9b0737825d0cc268fe285640b99fb49ca616e3
  end

  def create
    @run = Run.new(params.require(:start_time).permit(:distance, :end_time))
    @run.save
    redirect_to runs_path
  end

  def edit
    @run = Run.find(params[:id])
  end

  def update
    run = Run.find(params[:id])
    run.update_attributes(params.require(:start_time).permit(:distance, :end_time))

    redirect_to run
  end

  def destroy
    @run = Run.find(params[:id])
    @run.destroy

    redirect_to runs_path
  end

end
