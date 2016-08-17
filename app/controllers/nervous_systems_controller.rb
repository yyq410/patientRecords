class NervousSystemsController < ApplicationController
    def new
        @before_history_record = BeforeHistoryRecord.find(params[:before_history_record_id])
        @nervousSystem = @before_history_record.build_nervous_system
    end 

    def create
        @before_history_record = BeforeHistoryRecord.find(params[:before_history_record_id])
        @nervousSystem = @before_history_record.build_nervous_system(params_nervous)
        if @nervousSystem.save
            flash[:success] = "神经查体录入成功~"
            redirect_to new_nervous_system_assist_check_url(@nervousSystem)
        else
            flash[:error] = "录入失败!"
            render 'new'
        end 
    end 

    def show
        @before_history_record = BeforeHistoryRecord.find(params[:before_history_record_id])
        @nervousSystem = @before_history_record.nervous_system
        if @nervousSystem.nil?
            flash[:error] = "神经查体没有录入!"
            redirect_to new_before_history_record_nervous_system_url(@before_history_record)
        end 
    end 

    def edit
        @before_history_record = BeforeHistoryRecord.find(params[:before_history_record_id])
        @nervousSystem = @before_history_record.nervous_system
    end 

    def update
        @before_history_record = BeforeHistoryRecord.find(params[:before_history_record_id])
        @nervousSystem = @before_history_record.nervous_system
        if @nervousSystem.update(params_nervous)
            flash[:success] = "神经查体更新成功~"
            redirect_to edit_nervous_system_assist_check_url(@before_history_record), :method => :post
        else
            flash[:error] = "更新失败!"
            render 'edit'
        end 
    end 

    private 
        def params_nervous 
            params.require(:nervous_system).permit(
      :smartCheck,
      :smartdForce,
      :smartCompute,
      :voiceHard,
      :voiceHardScale,
      :voiceHardWords,
      :stridor,
      :stridorTime,
      :stridorMonth ,
      :stridorWords,
      :nystagmus,
      :nystagmusWords,
      :eyeMove,
      :eyeMoveWords,
      :muscleVolumn,
      :muscleUpSmall,
      :muscleDownSmall,
      :muscleVolumnWords,
      :foursPower,
      :foursPowerScale,
      :foursPowerWords,
      :musclePower,
      :musclePowerLeftUp,
      :musclePowerLeftDown,
      :musclePowerRightUp,
      :musclePowerRightDown,
      :reflex,
      :reflexLeftUp,
      :reflexLeftDown,
      :reflexRightUp,
      :reflexRightDown,
      :babinski,
      :babinskiLeft,
      :babinskiRight,
      :hoffman ,
      :hoffmanLeft,
      :hoffmanRight,
      :nosePoint,
      :nosePointLeft,
      :nosePointRight,
      :heelToKnee,
      :heelToKneeLeft,
      :heelToKneeRight,
      :spellMotion,
      :spellMotionLeft,
      :spellMotionRight,
      :gaitNat,
      :gaitNatScale,
      :gaitNatWords,
      :gaitSer,
      :gaitSerScale,
      :gaitSerWords,
      :gaitCom,
      :gaitComScale,
      :gaitComWords,
      :poseReflect,
      :poseReflectScale,
      :poseReflectWords ,
      :poseFormer,
      :poseFormerScale,
      :poseFormerWords,
      :bedPressure,
      :bedPressureHigh,
      :bedPressureLow,
      :chairPressure,
      :chairPressureHigh,
      :chairPressureLow,
      :upPressure,
      :upPressureHigh,
      :upPressureLow,
      :extraNervousText)
        end 
end
