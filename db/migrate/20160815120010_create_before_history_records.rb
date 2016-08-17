class CreateBeforeHistoryRecords < ActiveRecord::Migration
  def change
    create_table :before_history_records do |t|
      t.references :current_history_record
      
      #既往史
      #不明原因发热
      t.integer :unknownFever
      t.integer :unknownFeverTime
      t.integer :unknownFeverMonth 
      t.string  :unknownFeverTreat
      t.string  :unknownFeverText

      #甲状腺功能异常
      t.integer :thyroidException
      t.integer :thyroidExceptionTime
      t.integer :thyroidExceptionMonth 

      #高血压
      t.integer :highPressure 
      t.string  :highPressureText
      t.boolean :highPressureControl
      t.integer :highPressureValue 

      #冠心病
      t.integer :corHeart
      t.integer :corHeartTime
      t.integer :corHeartMonth 
      t.string :corHeartWords

      #糖尿病
      t.integer :diabetes
      t.integer :diabetesTime
      t.integer :diabetesMonth 
      t.integer :diabetesNumber
      t.string  :diabetesWords

      #CO中毒史
      t.integer :COPoison
      t.integer :COPoisonTime
      t.integer :COPoisonMonth 
      t.integer :COPoisonNumber
      t.string  :COPoisonWords

      #月经
      t.integer :yuejing
      t.boolean :yuejingEnd
      t.integer :yuejingEndYear
      t.integer :yuejingEndMonth

      #头部外伤史
      t.integer :brainHurt
      t.integer :brainHurtTime
      t.integer :brainHurtMonth
      t.integer :brainHurtNumber
      t.string  :brainHurtWords
      #用药史
      #美多芭
      t.integer :meiDuoBa
      t.integer :meiDuoBaTime
      t.integer :meiDuoBaMonth
      t.string :meiDuoBaResult

      #米多君
      t.integer :miDuoJun
      t.integer :miDuoJunTime
      t.integer :miDuoJunMonth 
      t.string :miDuoJunResult

      #其它西药
      t.integer :otherMedicine
      t.integer :otherMedicineTime
      t.integer :otherMedicineMonth 
      t.string :otherMedicineResult
      
      #中药
      t.integer :chineseMedicine
      t.integer :chineseMedicineTime
      t.integer :chineseMedicineMonth 
      t.string :chineseMedicineResult
      
      #家族史

      #与患者非常接近的表型
      t.integer :nearPhens
      t.string :nearPhensWords

      #帕金森病
      t.integer :parkinson
      t.string :parkinsonWords

      #共济失调
      t.integer :ataxia
      t.string :ataxiaWords

      #睡眠行为障碍
      t.integer :sleepHard
      t.string :sleepHardWords

      #低血压
      t.integer :lowPressure
      t.string :lowPressureWords

      #认知障碍
      t.integer :perceptHard
      t.string :perceptHardWords

      #其它 
      t.string :extraMedicineWords

      #个人史

      #饮酒史
      t.integer :wine
      t.integer :wineTime
      t.integer :wineMonth 
      t.integer :wineStopTime
      t.integer :wineStopMonth
      t.integer :wineNumber

      #吸烟史
      t.integer :smoke
      t.integer :smokeTime
      t.integer :smokeMonth 
      t.integer :smokeStopTime
      t.integer :smokeStopMonth 
      t.integer :smokeNumber

      #农药接触史
      t.integer :pesticide
      t.integer :pesticideTime
      t.integer :pesticideMonth 
      t.integer :pesticideNumber
      t.string :pesticideWords

      #有毒化学物接触史
      t.integer :chemical
      t.integer :chemicalTime
      t.integer :chemicalMonth 
      t.integer :chemicalNumber
      t.string :chemicalWords

      #缺氧地区生活史
      t.integer :noO2
      t.integer :noO2Time
      t.integer :noO2Month 

      t.text :suppleWords

      t.timestamps null: false
    end
  end
end
