class SessionsController < ApplicationController
  def new
  end

  def create
    doctor = Doctor.find_by(name: params[:session][:name])
    if doctor && doctor.authenticate(params[:session][:password])
        log_in doctor
        redirect_to doctor_path(doctor)
    else
        flash[:danger] = "用户名或密码错误！"
        render 'new'
    end 
  end 

  def destroy
      log_out
      redirect_to root_url
  end 
end
