class RunnersController < ApplicationController

  def show
    @runner = Runner.find_by(id: params[:id])
    @runs = @runner.runs
  end

end
