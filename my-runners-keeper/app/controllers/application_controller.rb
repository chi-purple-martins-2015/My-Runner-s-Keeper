class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_runner
    @current_runner ||= Runner.find_by(id: session[:runner_id]) if session[:runner_id]
  end

  def logged_in?
    session[:runner_id].present?
  end

  helper_method :current_runner
  helper_method :logged_in?

end
