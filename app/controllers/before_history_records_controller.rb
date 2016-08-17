class BeforeHistoryRecordsController < ApplicationController
    def new
        @current_history_record = CurrentHistoryRecord.find(params[:current_history_record_id])
        @beforeHistory = @current_history_record.build_before_history_record
    end 

    def create
        @current_history_record = CurrentHistoryRecord.find(params[:current_history_record_id])
        @beforeHistory = @current_history_record.build_before_history_record(params_before)
        if @beforeHistory.save
            flash[:success] = "既往史,用药史,家族史,个人史录入成功~"
            #redirect_to current_history_record_before_history_record_path(@current_history_record), :method => :get
            redirect_to new_before_history_record_nervous_system_url(@beforeHistory)
        else
            flash[:error] = "录入失败!"
            render 'new'
        end 
    end 

    def edit
        logger.debug "it is edit"
        @current_history_record = CurrentHistoryRecord.find(params[:current_history_record_id])
        @beforeHistory = @current_history_record.before_history_record
    end 

    def update
        @current_history_record = CurrentHistoryRecord.find(params[:current_history_record_id])
        @beforeHistory = @current_history_record.before_history_record
        if @beforeHistory.update(params_before)
            flash[:success] = "既往史,用药史,家族史,个人史更新成功~"
            redirect_to edit_before_history_record_nervous_system_url(@beforeHistory), :method => :post
        else
            flash[:success] = "录入失败!"
            render 'edit'
        end
    end 

    def show
        logger.debug "it is show"
        @current_history_record = CurrentHistoryRecord.find(params[:current_history_record_id])
        @beforeHistory = @current_history_record.before_history_record
        if @beforeHistory.nil?
            flash[:error] = "既往史,用药史,家族史,个人史没有录入!"
            redirect_to new_current_history_record_before_history_record_url(@current_history_record)
        end 
    end 

    def destroy
    end 

    private 
        def params_before
            params.require(:before_history_record).permit(
      :unknownFever,
      :unknownFeverTime,
      :unknownFeverMonth ,
       :unknownFeverTreat,
       :unknownFeverText,
      :thyroidException,
      :thyroidExceptionTime,
      :thyroidExceptionMonth ,
      :highPressure ,
       :highPressureText,
      :highPressureControl,
      :highPressureValue ,
      :corHeart,
      :corHeartTime,
      :corHeartMonth ,
      :corHeartWords,
      :diabetes,
      :diabetesTime,
      :diabetesMonth ,
      :diabetesNumber,
       :diabetesWords,
      :COPoison,
      :COPoisonTime,
      :COPoisonMonth ,
      :COPoisonNumber,
       :COPoisonWords,
      :yuejing,
      :yuejingEnd,
      :yuejingEndYear,
      :yuejingEndMonth,
      :brainHurt,
      :brainHurtTime,
      :brainHurtMonth,
      :brainHurtNumber,
       :brainHurtWords,
      :meiDuoBa,
      :meiDuoBaTime,
      :meiDuoBaMonth,
      :meiDuoBaResult,
      :miDuoJun,
      :miDuoJunTime,
      :miDuoJunMonth ,
      :miDuoJunResult,
      :otherMedicine,
      :otherMedicineTime,
      :otherMedicineMonth ,
      :otherMedicineResult,
      :chineseMedicine,
      :chineseMedicineTime,
      :chineseMedicineMonth ,
      :chineseMedicineResult,
      :nearPhens,
      :nearPhensWords,
      :parkinson,
      :parkinsonWords,
      :ataxia,
      :ataxiaWords,
      :sleepHard,
      :sleepHardWords,
      :lowPressure,
      :lowPressureWords,
      :perceptHard,
      :perceptHardWords,
      :extraMedicineWords,
      :wine,
      :wineTime,
      :wineMonth ,
      :wineStopTime,
      :wineStopMonth,
      :wineNumber,
      :smoke,
      :smokeTime,
      :smokeMonth ,
      :smokeStopTime,
      :smokeStopMonth ,
      :smokeNumber,
      :pesticide,
      :pesticideTime,
      :pesticideMonth ,
      :pesticideNumber,
      :pesticideWords,
      :chemical,
      :chemicalTime,
      :chemicalMonth ,
      :chemicalNumber,
      :chemicalWords,
      :noO2,
      :noO2Time,
      :noO2Month ,
      :suppleWords)
        end 
end
