class AssistChecksController < ApplicationController
    def new
        @nervous_system = NervousSystem.find(params[:nervous_system_id])
        @assistCheck = @nervous_system.build_assist_check
    end 

    def create
        @nervous_system = NervousSystem.find(params[:nervous_system_id])
        @assistCheck = @nervous_system.build_assist_check(params_assist)
        if @assistCheck.save
            flash[:success] = "辅助检查和拟诊录入成功~"
            redirect_to root_url
        else 
            flash[:error] = "录入失败!"
            render 'new'
        end 

    end 

    def edit
        @nervous_system = NervousSystem.find(params[:nervous_system_id])
        @assistCheck = @nervous_system.assist_check
        if @assistCheck.nil?
            flash[:error] = "辅助检查和拟诊没有录入!"
            redirect_to new_nervous_system_assist_check_url(@nervous_system)
        end 
    end 

    def show
        @nervous_system = NervousSystem.find(params[:nervous_system_id])
        @assistCheck = @nervous_system.assist_check

        if @assistCheck.nil?
            flash[:error] = "辅助检查和拟诊没有录入!"
            redirect_to new_nervous_system_assist_check_url(@nervous_system)
        end 
    end 

    def update
        @nervous_system = NervousSystem.find(params[:nervous_system_id])
        @assistCheck = @nervous_system.assist_check

        if @assistCheck.update(params_assist)
            flash[:success] = "辅助检查和拟诊更新成功~病人病历更新完成~"
            redirect_to root_url
        else 
            flash[:error] = "更新失败!"
            render 'edit'
        end 

    end 

    private
        def params_assist
            params.require(:assist_check).permit(
      :epenSmall,
      :epenSmallScale,
       :epenSmallPosition ,
      :stemSmall,
      :stemSmallScale,
       :stemSmallPosition,
      :cortexSmall,
      :cortexSmallScale,
      :albaException,
      :albaExceptionScale,
      :thyroidIndicator,
      :thyroidIndicatorText,
      :electrolyte,
      :electrolyteWords,
      :bloodFat,
      :bloodFatText,
      :bladderPiss,
      :bladderNumber,
      :bladderPosition ,
      :ceruloplasmin,
      :ceruloplasminText,
      :otherIndicators,
      :otherIndicatorsText,
      :extraAssistWords,
      :msaProb,
      :msaType,
      :doctorAdvice)
        end 
end
