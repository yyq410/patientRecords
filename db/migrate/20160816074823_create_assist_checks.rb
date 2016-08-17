class CreateAssistChecks < ActiveRecord::Migration
  def change
    create_table :assist_checks do |t|
      t.references :nervous_system

      #辅助检查
      #小脑萎缩
      t.integer :epenSmall
      t.integer :epenSmallScale
      t.string  :epenSmallPosition 

      #脑干萎缩
      t.integer :stemSmall
      t.integer :stemSmallScale
      t.string  :stemSmallPosition

      #大脑皮层萎缩
      t.integer :cortexSmall
      t.integer :cortexSmallScale

      #白质异常
      t.integer :albaException
      t.integer :albaExceptionScale

      #甲状腺功能指标
      t.integer :thyroidIndicator
      t.string :thyroidIndicatorText

      #电解质
      t.integer :electrolyte
      t.string :electrolyteWords

      #血脂相关指标
      t.integer :bloodFat
      t.string :bloodFatText

      #膀胱残余尿量
      t.integer :bladderPiss
      t.integer :bladderNumber
      t.string :bladderPosition 
      
      #铜蓝蛋白
      t.integer :ceruloplasmin
      t.string :ceruloplasminText

      #其它指标
      t.integer :otherIndicators
      t.string :otherIndicatorsText

      t.text :extraAssistWords

      #拟诊
      t.integer :msaProb
      t.integer :msaType

      #医嘱
      t.text :doctorAdvice

      t.timestamps null: false
    end
  end
end
