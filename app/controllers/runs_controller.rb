class RunsController < ApplicationController

  def index
    @runs=Run.all
  end

  def show
    @run = Run.find(params[:id])
    @comments = @run.comments
  end

  def new
    # puts request.params
    # @comment = Comment.find(params[:comment_id])
    @run = Run.new
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
