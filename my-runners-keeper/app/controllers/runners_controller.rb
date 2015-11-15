class RunnersController < ApplicationController

  def show
    @runner = Runner.find_by(id: params[:id])
    p "+++++++++++++++++++++++++++++++++++++++++++++++"
    p @runner
    p params
    @runs = @runner.runs
  end

end
