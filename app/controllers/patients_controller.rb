class PatientsController < ApplicationController
    before_action :logged_in_doctor

    def new
        @patient = @current_doctor.patients.build
    end 

    def create
        @patient = @current_doctor.patients.build(patient_params)
        if @patient.save
            flash[:success] = "病历录入成功~"
            redirect_to doctor_path(current_doctor)
        else
            flash[:error] = "病历录入失败！请检查"
            render 'new'
        end 
    end 
    
    def destroy
    end 

    private 
        def patient_params
            params.require(:patient).permit(:name, :gender, :age, :work, :education, :idnumber)
        end 
end
