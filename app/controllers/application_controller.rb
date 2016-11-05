class ApplicationController < ActionController::API  
  before_action :authenticate 
  def logged_in?
    !!current_user
  end

  def current_user
    #  if request header has 'HTTP_AUTHORIZATION: Bearer '
    #     get the token from this header and decode it
    #     then, use it to find the current user
    #   else
    #     return 401 of authorized
  end

  def authenticate
    render json: {error: "unauthorized"}, status: 404 unless logged_in?
  end

  
end