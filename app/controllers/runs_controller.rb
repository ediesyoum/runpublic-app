class RunsController < ApplicationController

  def index
    @runs=Run.all
    @comments=Comment.all
  end

  def show
    @run = @Run.find(params[:id])
    @comment = @Run.comments
  end

  def new
    # puts request.params
    @run = Run.new
    # @comment = Comment.find(params[:comment_id])
    # redirect_to new_runs_path

  end

  def create #strong params
    @run = Run.new(params.require(:run).permit(:distance, :start_time, :end_time))
    @run.save
  
    redirect_to action: "index"
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
