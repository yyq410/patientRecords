class CreateRecords < ActiveRecord::Migration
  def change
    create_table :currentHistoryRecords do |t|
      t.references :patient
      #就诊日期
      t.datetime :recordTime
      #门诊医生
      t.string :docName
      
      #体重下降
      t.integer :weigthLoss
      t.time :weightLossDuring
      t.integer :weightLossScale
      #发病年龄
      t.integer :beginIllnessAge
      #首发症状
      t.integer :firstSymptom
      #行走不稳
      t.integer :walkUnstable
      t.time :walkTime
      t.integer :walkScale
      #言语不清
      t.integer :speakUnclear
      t.time :speaktime
      t.integer :speakScale
      #持物不稳
      t.integer :holdUnstable
      t.time :holdTime
      t.integer :holdScale
      #饮水呛咳
      t.integer :drinkHard
      t.time :drinkTime
      t.integer :drinkScale
      #吞咽困难
      t.integer :eatHard
      t.time :eatTime
      t.integer :eatScale
      #视物模糊
      t.integer :eyeUnclear
      t.time :eyeTime
      t.integer :eyeScale
      #头晕
      t.integer :swirl
      t.time :swirlTime
      t.integer :swirlScale
      #晕厥
      t.integer :syncope
      t.time :syncoptTime
      #动作慢
      t.integer :actionSlow
      t.time :actionTime
      t.integer :actionScale
      #一侧肢体不灵活
      t.integer :oneSideRigid
      t.time :oneSideTime
      t.integer :oneSideScale
      #震颤
      t.integer :tremble
      t.time :trembleTime
      t.integer :trembleScale
      #下肢无力
      t.integer :lowerWeakness
      t.time :lowerTime
      t.integer :lowerScale
      #乏力
      t.integer :weakness
      t.time :weaknessTime
      t.integer :weaknessScale
      #尿频急
      t.integer :pissFast
      t.time :pissTime
      t.integer :pissScale
      #尿不净
      t.integer :pissNotEnd
      t.time :pissNotEndTime
      t.integer :pissNotEndScale
      #夜尿增多
      t.integer :pissNightAdd
      t.time :pissAddTime
      t.integer :pissAddNumber
      #排便障碍
      t.integer :defecate
      t.time :defecateTime
      t.integer :defecateNumber
      t.boolean :defecateNeedAssist
      #性功能减退
      t.integer :sexualLow
      t.time :sexualLowTime
      #手脚冰凉
      t.integer :motionCold
      t.time :motionColdTime
      t.string :motionNow
      #排汗异常
      t.integer :perspire
      t.time :perspireTime
      t.string :perspirePostion
      t.integer :perspireScale
      #梦中喊叫
      t.integer :dreamSay
      t.time :dreamSayTime
      t.integer :dreamSayNumber
      t.string :dreamSayText
      #梦中肢体活动
      t.integer :dreamMotion
      t.time :dreamMotionTime
      t.integer :dreamMotionNumber
      t.string :dreamMotionText
      #坠床
      t.integer :bedFall
      t.time :bedFallTime
      t.integer :bedFallNumber
      #打鼾
      t.integer :snore
      t.time :snoreTime
      t.string :snoreText
      #睡眠呼吸暂停
      t.integer :sleepStop
      t.time :sleepStopTime
      t.string :sleepStopText
      #喉鸣
      t.integer :throatSay
      t.time :throatSayTime
      t.string :throatSayText
      #强哭/强笑
      t.integer :smileBig
      t.time :smileBigTime
      t.string :smileBigText
      #记忆减退
      t.integer :hypomnesia
      t.time :hypomnesiaTime
      t.integer :hypomnesiaScale
      #血压低
      t.integer :bloodPresureLow
      t.time :bloodPresureTime
      t.string :bloodPresureText
    
      #补充说明
      t.text :extraCurrent 

      t.timestamps null: false
    end
  end
end
