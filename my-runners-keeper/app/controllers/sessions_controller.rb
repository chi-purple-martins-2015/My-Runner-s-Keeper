class SessionsController < ApplicationController

  def login
  end

  def create
    runner = Runner.find_by(email: runner_params[:email])
    if runner & runner.authenticate(runner_params[:password])
      session[:runner_id] = runner.id
      redirect_to '/'
    else
      render :login
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to '/'
  end

  private

  def runner_params
    params.require(:runner).permit(:first_name, :last_name, :captain, :phone_number, :email)
  end

end
