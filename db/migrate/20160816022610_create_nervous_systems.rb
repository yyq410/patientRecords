class CreateNervousSystems < ActiveRecord::Migration
  def change
    create_table :nervous_systems do |t|
      t.references :before_history_record

      #神经系统体检
      #智能检查
      t.integer :smartCheck
      t.string :smartdForce
      t.string :smartCompute

      #构音障碍
      t.integer :voiceHard
      t.integer :voiceHardScale
      t.string :voiceHardWords

      #喘鸣
      t.integer :stridor
      t.integer :stridorTime
      t.integer :stridorMonth 
      t.string :stridorWords

      #眼震
      t.integer :nystagmus
      t.string :nystagmusWords

      #眼动
      t.integer :eyeMove
      t.string :eyeMoveWords

      #肌容积
      t.integer :muscleVolumn
      t.boolean :muscleUpSmall
      t.boolean :muscleDownSmall
      t.string :muscleVolumnWords

      #四肢肌力
      t.integer :foursPower
      t.integer :foursPowerScale
      t.string :foursPowerWords

      #肌张力
      t.integer :musclePower
      t.integer :musclePowerLeftUp
      t.integer :musclePowerLeftDown
      t.integer :musclePowerRightUp
      t.integer :musclePowerRightDown

      #腱反射
      t.integer :reflex
      t.integer :reflexLeftUp
      t.integer :reflexLeftDown
      t.integer :reflexRightUp
      t.integer :reflexRightDown

      #Babinshki
      t.integer :babinski
      t.integer :babinskiLeft
      t.integer :babinskiRight

      #Hoffman
      t.integer :hoffman 
      t.integer :hoffmanLeft
      t.integer :hoffmanRight

      #指鼻试验
      t.integer :nosePoint
      t.integer :nosePointLeft
      t.integer :nosePointRight

      #跟膝胫试验
      t.integer :heelToKnee
      t.integer :heelToKneeLeft
      t.integer :heelToKneeRight
      
      #轮替动作
      t.integer :spellMotion
      t.integer :spellMotionLeft
      t.integer :spellMotionRight

      #自然步态
      t.integer :gaitNat
      t.integer :gaitNatScale
      t.string :gaitNatWords

      #串联步态
      t.integer :gaitSer
      t.integer :gaitSerScale
      t.string :gaitSerWords

      #并足站立
      t.integer :gaitCom
      t.integer :gaitComScale
      t.string :gaitComWords

      #姿势反射
      t.integer :poseReflect
      t.integer :poseReflectScale
      t.string :poseReflectWords 

      #前屈姿势
      t.integer :poseFormer
      t.integer :poseFormerScale
      t.string :poseFormerWords
      
      #卧位血压
      t.integer :bedPressure
      t.integer :bedPressureHigh
      t.integer :bedPressureLow

      #坐位血压
      t.integer :chairPressure
      t.integer :chairPressureHigh
      t.integer :chairPressureLow

      #站位血压
      t.integer :upPressure
      t.integer :upPressureHigh
      t.integer :upPressureLow

      t.text :extraNervousText

      t.timestamps null: false
    end
  end
end
