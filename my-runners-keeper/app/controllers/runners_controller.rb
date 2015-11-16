class RunnersController < ApplicationController

  def new
    @runner = Runner.new
  end

  def create
    @runner = Runner.new(runner_params)
    if @runner.save
      redirect_to "/"
    else
      render "new"
    end
  end


  def show
    @runner = Runner.find_by(id: params[:id])
    @runs = @runner.runs
  end

  def index
    @runners = Runner.all
  end

  private

  def runner_params
    params.require(:runner).permit(:first_name, :last_name, :captain, :email, :img_url, :password)
  end


end
