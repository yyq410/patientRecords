class CreateCurrentHistoryRecords2 < ActiveRecord::Migration
  def change
    create_table :current_history_records do |t|
      t.references :patient
      #就诊日期
      t.datetime :recordTime
      #门诊医生
      t.string :docName
      
      #体重下降
      t.integer :weigthLoss
      t.integer :weightLossDuring
      t.integer :weightLossMonth
      t.integer :weightLossScale
      #发病年龄
      t.integer :beginIllnessAge
      #首发症状
      t.integer :firstSymptom
      #行走不稳
      t.integer :walkUnstable
      t.integer :walkTime
      t.integer :walkMonth
      t.integer :walkScale
      t.integer :walkNow
      #言语不清
      t.integer :speakUnclear
      t.integer :speakTime
      t.integer :speakMonth
      t.integer :speakScale
      t.integer :speakNow 
      #持物不稳
      t.integer :holdUnstable
      t.integer :holdTime
      t.integer :holdMonth
      t.integer :holdScale
      t.integer :holdNow 
      #饮水呛咳
      t.integer :drinkHard
      t.integer :drinkTime
      t.integer :drinkMonth
      t.integer :drinkScale
      t.integer :drinkNow 
      #吞咽困难
      t.integer :eatHard
      t.integer :eatTime
      t.integer :eatMonth
      t.integer :eatScale
      t.integer :eatNow 
      #视物模糊
      t.integer :eyeUnclear
      t.integer :eyeTime
      t.integer :eyeMonth
      t.integer :eyeScale
      t.integer :eyeNow 
      #头晕
      t.integer :swirl
      t.integer :swirlTime
      t.integer :swirlMonth 
      t.integer :swirlScale
      t.integer :swirlNow 
      #晕厥
      t.integer :syncope
      t.integer :syncopeTime
      t.integer :syncopeMonth
      t.integer :syncopeNumber
      t.string :syncopeText
      #动作慢
      t.integer :actionSlow
      t.integer :actionTime
      t.integer :actionMonth
      t.integer :actionScale
      t.integer :actionNow 
      #一侧肢体不灵活
      t.integer :oneSideRigid
      t.integer :oneSideTime
      t.integer :oneSideMonth 
      t.integer :oneSideScale
      t.integer :oneSideNow 
      #震颤
      t.integer :tremble
      t.integer :trembleTime
      t.integer :trembleMonth 
      t.integer :trembleScale
      t.integer :trembleNow 
      #下肢无力
      t.integer :lowerWeakness
      t.integer :lowerTime
      t.integer :lowerMonth
      t.integer :lowerScale
      t.integer :lowerNow 
      #乏力
      t.integer :weakness
      t.integer :weaknessTime
      t.integer :weaknessMonth
      t.integer :weaknessScale
      t.integer :weaknessNow 
      #尿频急
      t.integer :pissFast
      t.integer :pissTime
      t.integer :pissMonth 
      t.integer :pissScale
      t.integer :pissFastNow
      #尿不净
      t.integer :pissNotEnd
      t.integer :pissNotEndTime
      t.integer :pissNotEndMonth 
      t.integer :pissNotEndScale
      t.integer :pissNotEndNow 
      #夜尿增多
      t.integer :pissNightAdd
      t.integer :pissAddTime
      t.integer :pissAddMonth 
      t.integer :pissAddNumber
      #排便障碍
      t.integer :defecate
      t.integer :defecateTime
      t.integer :defecateMonth 
      t.integer :defecateNumber
      t.boolean :defecateNeedAssist
      #性功能减退
      t.integer :sexualLow
      t.integer :sexualLowTime
      t.integer :sexualLowMonth
      t.string :sexualLowWords
      #手脚冰凉
      t.integer :motionCold
      t.integer :motionColdTime
      t.integer :motionColdMonth
      t.string  :motionColdPosition
      t.integer :motionColdScale
      #排汗异常
      t.integer :perspire
      t.integer :perspireTime
      t.integer :perspireMonth
      t.integer :perspireScale
      t.string :perspireText
      #梦中喊叫
      t.integer :dreamSay
      t.integer :dreamSayTime
      t.integer :dreamSayMonth
      t.integer :dreamSayNumber
      t.string :dreamSayText
      #梦中肢体活动
      t.integer :dreamMotion
      t.integer :dreamMotionTime
      t.integer :dreamMotionMonth 
      t.integer :dreamMotionNumber
      #坠床
      t.integer :bedFall
      t.integer :bedFallTime
      t.integer :bedFallMonth 
      t.string  :bedFallText
      #打鼾
      t.integer :snore
      t.integer :snoreTime
      t.integer :snoreMonth 
      t.string :snoreText
      #睡眠呼吸暂停
      t.integer :sleepStop
      t.integer :sleepStopTime
      t.integer :sleepStopMonth 
      t.string :sleepStopText
      #喉鸣
      t.integer :throatSay
      t.integer :throatSayTime
      t.integer :throatSayMonth 
      t.string :throatSayText
      #强哭/强笑
      t.integer :smileBig
      t.integer :smileBigTime
      t.integer :smileBigMonth 
      t.integer :smileBigScale
      #记忆减退
      t.integer :hypomnesia
      t.integer :hypomnesiaTime
      t.integer :hypomnesiaMonth 
      t.string  :hypomnesiaScale
      #血压低
      t.integer :bloodPresureLow
      t.integer :bloodPresureTime
      t.integer :bloodPresureMonth 
      t.integer :bloodPresureNumber
    
      #补充说明
      t.text :extraCurrent 

      t.string   :walkUnstableMore
      t.string   :speakUnclearMore 
      t.string   :holdUnstableMore
      t.string   :drinkHardMore 
      t.string   :eatHardMore 
      t.string   :eyeUnclearMore 
      t.string   :swirlMore 
      t.string   :actionSlowMore 
      t.string   :oneSideRigidMore 
      t.string   :trembleMore 
      t.string   :lowerWeaknessMore 
      t.string   :weaknessMore 
      t.string   :pissFastMore  
      t.string   :pissNotEndMore 

    end
  end
end
