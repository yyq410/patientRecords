class CurrentHistoryRecordsController < ApplicationController
    before_action :logged_in_doctor
    def new
        @patient = Patient.find(params[:patient_id])
        @currentHistory = @patient.current_history_records.build
    end 

    def create
        @patient = Patient.find(params[:patient_id])
        @currentHistory = @patient.current_history_records.build(params_current)
        if @currentHistory.save 
            flash[:success] = "现病史录入成功~"
            redirect_to new_current_history_record_before_history_record_url(@currentHistory)
        else 
            flash[:error] = "录入错误!"
            render 'new'
        end 
    end 

    def index
        @patient = Patient.find(params[:patient_id])
        docName = @current_doctor.name
        @currentHistories = @patient.current_history_records.where(docName:docName)
    end 

    def edit
        @patient = Patient.find(params[:patient_id])
        @currentHistory = @patient.current_history_records.find(params[:id])
    end 

    def update
        @patient = Patient.find(params[:patient_id])
        @currentHistory = @patient.current_history_records.find(params[:id])
        if(@currentHistory.update(params_current))
            flash[:success] = "病历修改成功~"
            @beforeHistory = @currentHistory.before_history_record
            redirect_to edit_current_history_record_before_history_record_url(@currentHistory)
        else 
            flash[:error] = "病历修改失败!"
            render 'edit'
        end 
    end 

    def show
        @patient = Patient.find(params[:patient_id])
        @currentHistory = @patient.current_history_records.find(params[:id])
    end 

    def destroy
        @patient = Patient.find(params[:patient_id])
        @currentHistory = @patient.current_history_records.find(params[:id])
        if @currentHistory.destroy
            flash[:success] = "成功删除~"
            redirect_to patient_current_history_records_url(@patient)
        else 
            flash[:error] = "删除失败!"
            redirect_to root_url
        end 
    end 

    private
        def params_current
            params.require(:current_history_record).permit(
      :recordTime,
      :docName,
      :weigthLoss,
      :weightLossDuring,
      :weightLossMonth,
      :weightLossScale,
      :beginIllnessAge,
      :firstSymptom,
      :walkUnstable,
      :walkTime,
      :walkMonth,
      :walkScale,
      :walkNow,
      :speakUnclear,
      :speakTime,
      :speakMonth,
      :speakScale,
      :speakNow ,
      :holdUnstable,
      :holdTime,
      :holdMonth,
      :holdScale,
      :holdNow ,
      :drinkHard,
      :drinkTime,
      :drinkMonth,
      :drinkScale,
      :drinkNow ,
      :eatHard,
      :eatTime,
      :eatMonth,
      :eatScale,
      :eatNow ,
      :eyeUnclear,
      :eyeTime,
      :eyeMonth,
      :eyeScale,
      :eyeNow ,
      :swirl,
      :swirlTime,
      :swirlMonth ,
      :swirlScale,
      :swirlNow ,
      :syncope,
      :syncopeTime,
      :syncopeMonth,
      :syncopeNumber,
      :syncopeText,
      :actionSlow,
      :actionTime,
      :actionMonth,
      :actionScale,
      :actionNow ,
      :oneSideRigid,
      :oneSideTime,
      :oneSideMonth ,
      :oneSideScale,
      :oneSideNow ,
      :tremble,
      :trembleTime,
      :trembleMonth ,
      :trembleScale,
      :trembleNow ,
      :lowerWeakness,
      :lowerTime,
      :lowerMonth,
      :lowerScale,
      :lowerNow ,
      :weakness,
      :weaknessTime,
      :weaknessMonth,
      :weaknessScale,
      :weaknessNow ,
      :pissFast,
      :pissTime,
      :pissMonth ,
      :pissScale,
      :pissFastNow,
      :pissNotEnd,
      :pissNotEndTime,
      :pissNotEndMonth ,
      :pissNotEndScale,
      :pissNotEndNow ,
      :pissNightAdd,
      :pissAddTime,
      :pissAddMonth ,
      :pissAddNumber,
      :defecate,
      :defecateTime,
      :defecateMonth ,
      :defecateNumber,
      :defecateNeedAssist,
      :sexualLow,
      :sexualLowTime,
      :sexualLowMonth,
      :sexualLowWords,
      :motionCold,
      :motionColdTime,
      :motionColdMonth,
       :motionColdPositon,
      :motionColdScale,
      :perspire,
      :perspireTime,
      :perspireMonth,
      :perspireScale,
      :perspireText,
      :dreamSay,
      :dreamSayTime,
      :dreamSayMonth,
      :dreamSayNumber,
      :dreamSayText,
      :dreamMotion,
      :dreamMotionTime,
      :dreamMotionMonth ,
      :dreamMotionNumber,
      :bedFall,
      :bedFallTime,
      :bedFallMonth ,
       :bedFallText,
      :snore,
      :snoreTime,
      :snoreMonth ,
      :snoreText,
      :sleepStop,
      :sleepStopTime,
      :sleepStopMonth ,
      :sleepStopText,
      :throatSay,
      :throatSayTime,
      :throatSayMonth ,
      :throatSayText,
      :smileBig,
      :smileBigTime,
      :smileBigMonth ,
      :smileBigScale,
      :hypomnesia,
      :hypomnesiaTime,
      :hypomnesiaMonth ,
       :hypomnesiaScale,
      :bloodPresureLow,
      :bloodPresureTime,
      :bloodPresureMonth ,
      :bloodPresureNumber,
      :extraCurrent ,
        :walkUnstableMore,
        :speakUnclearMore ,
        :holdUnstableMore,
        :drinkHardMore ,
        :eatHardMore ,
        :eyeUnclearMore ,
        :swirlMore ,
        :actionSlowMore ,
        :oneSideRigidMore ,
        :trembleMore ,
        :lowerWeaknessMore ,
        :weaknessMore ,
        :pissFastMore  ,
        :pissNotEndMore)
        end 
end
