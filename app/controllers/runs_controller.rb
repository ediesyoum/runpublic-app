class RunsController < ApplicationController

  def index
    @runs=Run.all
  end

  def show
<<<<<<< HEAD
    @run = Run.new
=======
    @run = Run.find(params[:id])
>>>>>>> faf230fa3390b8da1322bb87bc7e1d1665662174
    # @comments = @run.comments
  end

  def new
<<<<<<< HEAD
<<<<<<< HEAD
    # puts request.params
    # @comment = Comment.find(params[:comment_id])
    # @run = Run.new
=======
    puts request.params
    @comment = Comment.find(params[:comment_id])
    @run = Run.new
>>>>>>> ad9b0737825d0cc268fe285640b99fb49ca616e3
=======
    # puts request.params
    @run = Run.new
    # @comment = Comment.find(params[:comment_id])
    redirect_to new_run_path
>>>>>>> faf230fa3390b8da1322bb87bc7e1d1665662174
  end

  def create
    @run = Run.new(params.require(:start_time).permit(:distance, :end_time))
    @run.save
    redirect_to new_runs_path
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
