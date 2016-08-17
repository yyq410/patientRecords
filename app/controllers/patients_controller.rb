class PatientsController < ApplicationController
    before_action :logged_in_doctor

    def new
        @patient = @current_doctor.patients.build
    end 

    def create
        @patient = @current_doctor.patients.build(patient_params)
        if @patient.save
            flash[:success] = "病人信息录入成功~"
            redirect_to root_url
        else
            flash[:error] = "病人信息录入失败！请检查"
            render 'new'
        end 
    end 
    
    def edit
        @patient = Patient.find(params[:id])
    end 

    def update
        @patient = Patient.find(params[:id])
        if @patient.update(patient_params)
            flash[:success] = "病人信息更新成功~"
            redirect_to root_url
        else 
            flash[:error] = "病人信息更新错误!"
            render 'edit'
        end 
    end 

    def show
        @patient = Patient.find(params[:id])
    end

    def destroy
        @patient = Patient.find(params[:id])
        if @patient.destroy
            flash[:info] = "病人信息删除成功~"
        else 
            flash[:error] = "删除失败!"
        end

        redirect_to root_url
    end 

    private 
        def patient_params
            params.require(:patient).permit(:name, :gender, :age, :work, :education, :idnumber)
        end 
end
