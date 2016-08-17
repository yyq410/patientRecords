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
          redirect_to doctor_url(@doctor)
      else
          flash[:error] = "注册失败！"
          render 'new'
      end 
  end 

  def edit
      @doctor = Doctor.find(params[:id])
  end 

  def update
      @doctor = Doctor.find(params[:id])
      if @doctor.update(doc_params)
          flash[:success] = "信息更新成功~"
          redirect_to doctor_url(@doctor)
      else 
          flash[:error] = "信息更新失败!"
          render 'edit'
      end 
  end 

  private
    def doc_params 
        params.require(:doctor).permit(:name, :email, :password, :password_confirmation)
    end 
end
