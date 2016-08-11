class DoctorsController < ApplicationController
  def new
      @doctor = Doctor.new
  end

  def show
      @doctor = Doctor.find(params[:id])
  end 

  def create
      @doctor = Doctor.new(doc_params)
      if @doctor.save
          flash[:success] = "注册成功~欢迎使用~"
          redirect_to doctor_path(@doctor)
      else
          flash[:error] = "注册失败！"
          render 'new'
      end 
  end 

  private
    def doc_params 
        params.require(:doctor).permit(:name, :email, :password, :password_confirmation)
    end 
end
