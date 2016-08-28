module SessionsHelper
    def log_in(doctor)
        session[:doctor_id] = doctor.id
    end 

    def current_doctor
        if (doctor_id = session[:doctor_id])
            @current_doctor ||= Doctor.find_by(id: doctor_id)
        elsif (doctor_id = cookies.signed[:doctor_id])
            doctor = Doctor.find_by(id:doctor_id)
            if doctor && doctor.authenticated?(cookies[:remember_token])
                log_in doctor 
                @current_doctor = doctor
            end 
        end 
    end 

    def forget(doctor)
        doctor.forget
        cookies.delete(:doctor_id)
        cookies.delete(:remember_token)
    end 

    def logged_in?
        !current_doctor.nil?
    end 

    def log_out
        forget(current_doctor)
        session.delete(:doctor_id)
        @current_doctor = nil
    end 

    def remember(doctor)
        doctor.remember
        cookies.permanent.signed[:doctor_id] = doctor.id
        cookies.permanent[:remember_token] = doctor.remember_token
    end 
end
