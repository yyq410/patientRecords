class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  private
    def logged_in_doctor
        unless logged_in?
            flash[:danger] = "请登录后再进行操作~"
            redirect_to root_url
        end 
    end 
end
