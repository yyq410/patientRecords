# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160828043828) do

  create_table "assist_checks", force: :cascade do |t|
    t.integer  "nervous_system_id"
    t.integer  "epenSmall"
    t.integer  "epenSmallScale"
    t.string   "epenSmallPosition"
    t.integer  "stemSmall"
    t.integer  "stemSmallScale"
    t.string   "stemSmallPosition"
    t.integer  "cortexSmall"
    t.integer  "cortexSmallScale"
    t.integer  "albaException"
    t.integer  "albaExceptionScale"
    t.integer  "thyroidIndicator"
    t.string   "thyroidIndicatorText"
    t.integer  "electrolyte"
    t.string   "electrolyteWords"
    t.integer  "bloodFat"
    t.string   "bloodFatText"
    t.integer  "bladderPiss"
    t.integer  "bladderNumber"
    t.string   "bladderPosition"
    t.integer  "ceruloplasmin"
    t.string   "ceruloplasminText"
    t.integer  "otherIndicators"
    t.string   "otherIndicatorsText"
    t.text     "extraAssistWords"
    t.integer  "msaProb"
    t.integer  "msaType"
    t.text     "doctorAdvice"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "before_history_records", force: :cascade do |t|
    t.integer  "current_history_record_id"
    t.integer  "unknownFever"
    t.integer  "unknownFeverTime"
    t.integer  "unknownFeverMonth"
    t.string   "unknownFeverTreat"
    t.string   "unknownFeverText"
    t.integer  "thyroidException"
    t.integer  "thyroidExceptionTime"
    t.integer  "thyroidExceptionMonth"
    t.integer  "highPressure"
    t.string   "highPressureText"
    t.boolean  "highPressureControl"
    t.integer  "highPressureValue"
    t.integer  "corHeart"
    t.integer  "corHeartTime"
    t.integer  "corHeartMonth"
    t.string   "corHeartWords"
    t.integer  "diabetes"
    t.integer  "diabetesTime"
    t.integer  "diabetesMonth"
    t.integer  "diabetesNumber"
    t.string   "diabetesWords"
    t.integer  "COPoison"
    t.integer  "COPoisonTime"
    t.integer  "COPoisonMonth"
    t.integer  "COPoisonNumber"
    t.string   "COPoisonWords"
    t.integer  "yuejing"
    t.boolean  "yuejingEnd"
    t.integer  "yuejingEndYear"
    t.integer  "yuejingEndMonth"
    t.integer  "brainHurt"
    t.integer  "brainHurtTime"
    t.integer  "brainHurtMonth"
    t.integer  "brainHurtNumber"
    t.string   "brainHurtWords"
    t.integer  "meiDuoBa"
    t.integer  "meiDuoBaTime"
    t.integer  "meiDuoBaMonth"
    t.string   "meiDuoBaResult"
    t.integer  "miDuoJun"
    t.integer  "miDuoJunTime"
    t.integer  "miDuoJunMonth"
    t.string   "miDuoJunResult"
    t.integer  "otherMedicine"
    t.integer  "otherMedicineTime"
    t.integer  "otherMedicineMonth"
    t.string   "otherMedicineResult"
    t.integer  "chineseMedicine"
    t.integer  "chineseMedicineTime"
    t.integer  "chineseMedicineMonth"
    t.string   "chineseMedicineResult"
    t.integer  "nearPhens"
    t.string   "nearPhensWords"
    t.integer  "parkinson"
    t.string   "parkinsonWords"
    t.integer  "ataxia"
    t.string   "ataxiaWords"
    t.integer  "sleepHard"
    t.string   "sleepHardWords"
    t.integer  "lowPressure"
    t.string   "lowPressureWords"
    t.integer  "perceptHard"
    t.string   "perceptHardWords"
    t.string   "extraMedicineWords"
    t.integer  "wine"
    t.integer  "wineTime"
    t.integer  "wineMonth"
    t.integer  "wineStopTime"
    t.integer  "wineStopMonth"
    t.integer  "wineNumber"
    t.integer  "smoke"
    t.integer  "smokeTime"
    t.integer  "smokeMonth"
    t.integer  "smokeStopTime"
    t.integer  "smokeStopMonth"
    t.integer  "smokeNumber"
    t.integer  "pesticide"
    t.integer  "pesticideTime"
    t.integer  "pesticideMonth"
    t.integer  "pesticideNumber"
    t.string   "pesticideWords"
    t.integer  "chemical"
    t.integer  "chemicalTime"
    t.integer  "chemicalMonth"
    t.integer  "chemicalNumber"
    t.string   "chemicalWords"
    t.integer  "noO2"
    t.integer  "noO2Time"
    t.integer  "noO2Month"
    t.text     "suppleWords"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "currentHistoryRecords", force: :cascade do |t|
    t.integer  "patient_id"
    t.datetime "recordTime"
    t.string   "docName"
    t.integer  "weigthLoss"
    t.time     "weightLossDuring"
    t.integer  "weightLossScale"
    t.integer  "beginIllnessAge"
    t.integer  "firstSymptom"
    t.integer  "walkUnstable"
    t.time     "walkTime"
    t.integer  "walkScale"
    t.integer  "speakUnclear"
    t.time     "speaktime"
    t.integer  "speakScale"
    t.integer  "holdUnstable"
    t.time     "holdTime"
    t.integer  "holdScale"
    t.integer  "drinkHard"
    t.time     "drinkTime"
    t.integer  "drinkScale"
    t.integer  "eatHard"
    t.time     "eatTime"
    t.integer  "eatScale"
    t.integer  "eyeUnclear"
    t.time     "eyeTime"
    t.integer  "eyeScale"
    t.integer  "swirl"
    t.time     "swirlTime"
    t.integer  "swirlScale"
    t.integer  "syncope"
    t.time     "syncoptTime"
    t.integer  "actionSlow"
    t.time     "actionTime"
    t.integer  "actionScale"
    t.integer  "oneSideRigid"
    t.time     "oneSideTime"
    t.integer  "oneSideScale"
    t.integer  "tremble"
    t.time     "trembleTime"
    t.integer  "trembleScale"
    t.integer  "lowerWeakness"
    t.time     "lowerTime"
    t.integer  "lowerScale"
    t.integer  "weakness"
    t.time     "weaknessTime"
    t.integer  "weaknessScale"
    t.integer  "pissFast"
    t.time     "pissTime"
    t.integer  "pissScale"
    t.integer  "pissNotEnd"
    t.time     "pissNotEndTime"
    t.integer  "pissNotEndScale"
    t.integer  "pissNightAdd"
    t.time     "pissAddTime"
    t.integer  "pissAddNumber"
    t.integer  "defecate"
    t.time     "defecateTime"
    t.integer  "defecateNumber"
    t.boolean  "defecateNeedAssist"
    t.integer  "sexualLow"
    t.time     "sexualLowTime"
    t.integer  "motionCold"
    t.time     "motionColdTime"
    t.string   "motionNow"
    t.integer  "perspire"
    t.time     "perspireTime"
    t.string   "perspirePostion"
    t.integer  "perspireScale"
    t.integer  "dreamSay"
    t.time     "dreamSayTime"
    t.integer  "dreamSayNumber"
    t.string   "dreamSayText"
    t.integer  "dreamMotion"
    t.time     "dreamMotionTime"
    t.integer  "dreamMotionNumber"
    t.string   "dreamMotionText"
    t.integer  "bedFall"
    t.time     "bedFallTime"
    t.integer  "bedFallNumber"
    t.integer  "snore"
    t.time     "snoreTime"
    t.string   "snoreText"
    t.integer  "sleepStop"
    t.time     "sleepStopTime"
    t.string   "sleepStopText"
    t.integer  "throatSay"
    t.time     "throatSayTime"
    t.string   "throatSayText"
    t.integer  "smileBig"
    t.time     "smileBigTime"
    t.string   "smileBigText"
    t.integer  "hypomnesia"
    t.time     "hypomnesiaTime"
    t.integer  "hypomnesiaScale"
    t.integer  "bloodPresureLow"
    t.time     "bloodPresureTime"
    t.string   "bloodPresureText"
    t.text     "extraCurrent"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "current_history_records", force: :cascade do |t|
    t.integer  "patient_id"
    t.datetime "recordTime"
    t.string   "docName"
    t.integer  "weigthLoss"
    t.integer  "weightLossDuring"
    t.integer  "weightLossMonth"
    t.integer  "weightLossScale"
    t.integer  "beginIllnessAge"
    t.integer  "firstSymptom"
    t.integer  "walkUnstable"
    t.integer  "walkTime"
    t.integer  "walkMonth"
    t.integer  "walkScale"
    t.integer  "walkNow"
    t.integer  "speakUnclear"
    t.integer  "speakTime"
    t.integer  "speakMonth"
    t.integer  "speakScale"
    t.integer  "speakNow"
    t.integer  "holdUnstable"
    t.integer  "holdTime"
    t.integer  "holdMonth"
    t.integer  "holdScale"
    t.integer  "holdNow"
    t.integer  "drinkHard"
    t.integer  "drinkTime"
    t.integer  "drinkMonth"
    t.integer  "drinkScale"
    t.integer  "drinkNow"
    t.integer  "eatHard"
    t.integer  "eatTime"
    t.integer  "eatMonth"
    t.integer  "eatScale"
    t.integer  "eatNow"
    t.integer  "eyeUnclear"
    t.integer  "eyeTime"
    t.integer  "eyeMonth"
    t.integer  "eyeScale"
    t.integer  "eyeNow"
    t.integer  "swirl"
    t.integer  "swirlTime"
    t.integer  "swirlMonth"
    t.integer  "swirlScale"
    t.integer  "swirlNow"
    t.integer  "syncope"
    t.integer  "syncopeTime"
    t.integer  "syncopeMonth"
    t.integer  "syncopeNumber"
    t.string   "syncopeText"
    t.integer  "actionSlow"
    t.integer  "actionTime"
    t.integer  "actionMonth"
    t.integer  "actionScale"
    t.integer  "actionNow"
    t.integer  "oneSideRigid"
    t.integer  "oneSideTime"
    t.integer  "oneSideMonth"
    t.integer  "oneSideScale"
    t.integer  "oneSideNow"
    t.integer  "tremble"
    t.integer  "trembleTime"
    t.integer  "trembleMonth"
    t.integer  "trembleScale"
    t.integer  "trembleNow"
    t.integer  "lowerWeakness"
    t.integer  "lowerTime"
    t.integer  "lowerMonth"
    t.integer  "lowerScale"
    t.integer  "lowerNow"
    t.integer  "weakness"
    t.integer  "weaknessTime"
    t.integer  "weaknessMonth"
    t.integer  "weaknessScale"
    t.integer  "weaknessNow"
    t.integer  "pissFast"
    t.integer  "pissTime"
    t.integer  "pissMonth"
    t.integer  "pissScale"
    t.integer  "pissFastNow"
    t.integer  "pissNotEnd"
    t.integer  "pissNotEndTime"
    t.integer  "pissNotEndMonth"
    t.integer  "pissNotEndScale"
    t.integer  "pissNotEndNow"
    t.integer  "pissNightAdd"
    t.integer  "pissAddTime"
    t.integer  "pissAddMonth"
    t.integer  "pissAddNumber"
    t.integer  "defecate"
    t.integer  "defecateTime"
    t.integer  "defecateMonth"
    t.integer  "defecateNumber"
    t.boolean  "defecateNeedAssist"
    t.integer  "sexualLow"
    t.integer  "sexualLowTime"
    t.integer  "sexualLowMonth"
    t.string   "sexualLowWords"
    t.integer  "motionCold"
    t.integer  "motionColdTime"
    t.integer  "motionColdMonth"
    t.string   "motionColdPosition"
    t.integer  "motionColdScale"
    t.integer  "perspire"
    t.integer  "perspireTime"
    t.integer  "perspireMonth"
    t.integer  "perspireScale"
    t.string   "perspireText"
    t.integer  "dreamSay"
    t.integer  "dreamSayTime"
    t.integer  "dreamSayMonth"
    t.integer  "dreamSayNumber"
    t.string   "dreamSayText"
    t.integer  "dreamMotion"
    t.integer  "dreamMotionTime"
    t.integer  "dreamMotionMonth"
    t.integer  "dreamMotionNumber"
    t.integer  "bedFall"
    t.integer  "bedFallTime"
    t.integer  "bedFallMonth"
    t.string   "bedFallText"
    t.integer  "snore"
    t.integer  "snoreTime"
    t.integer  "snoreMonth"
    t.string   "snoreText"
    t.integer  "sleepStop"
    t.integer  "sleepStopTime"
    t.integer  "sleepStopMonth"
    t.string   "sleepStopText"
    t.integer  "throatSay"
    t.integer  "throatSayTime"
    t.integer  "throatSayMonth"
    t.string   "throatSayText"
    t.integer  "smileBig"
    t.integer  "smileBigTime"
    t.integer  "smileBigMonth"
    t.integer  "smileBigScale"
    t.integer  "hypomnesia"
    t.integer  "hypomnesiaTime"
    t.integer  "hypomnesiaMonth"
    t.string   "hypomnesiaScale"
    t.integer  "bloodPresureLow"
    t.integer  "bloodPresureTime"
    t.integer  "bloodPresureMonth"
    t.integer  "bloodPresureNumber"
    t.text     "extraCurrent"
    t.string   "walkUnstableMore"
    t.string   "speakUnclearMore"
    t.string   "holdUnstableMore"
    t.string   "drinkHardMore"
    t.string   "eatHardMore"
    t.string   "eyeUnclearMore"
    t.string   "swirlMore"
    t.string   "actionSlowMore"
    t.string   "oneSideRigidMore"
    t.string   "trembleMore"
    t.string   "lowerWeaknessMore"
    t.string   "weaknessMore"
    t.string   "pissFastMore"
    t.string   "pissNotEndMore"
    t.string   "pissAddText"
    t.string   "smileBigText"
    t.integer  "recordAge"
    t.string   "recordProcess"
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
  end

  create_table "nervous_systems", force: :cascade do |t|
    t.integer  "before_history_record_id"
    t.integer  "smartCheck"
    t.string   "smartdForce"
    t.string   "smartCompute"
    t.integer  "voiceHard"
    t.integer  "voiceHardScale"
    t.string   "voiceHardWords"
    t.integer  "stridor"
    t.integer  "stridorTime"
    t.integer  "stridorMonth"
    t.string   "stridorWords"
    t.integer  "nystagmus"
    t.string   "nystagmusWords"
    t.integer  "eyeMove"
    t.string   "eyeMoveWords"
    t.integer  "muscleVolumn"
    t.boolean  "muscleUpSmall"
    t.boolean  "muscleDownSmall"
    t.string   "muscleVolumnWords"
    t.integer  "foursPower"
    t.integer  "foursPowerScale"
    t.string   "foursPowerWords"
    t.integer  "musclePower"
    t.integer  "musclePowerLeftUp"
    t.integer  "musclePowerLeftDown"
    t.integer  "musclePowerRightUp"
    t.integer  "musclePowerRightDown"
    t.integer  "reflex"
    t.integer  "reflexLeftUp"
    t.integer  "reflexLeftDown"
    t.integer  "reflexRightUp"
    t.integer  "reflexRightDown"
    t.integer  "babinski"
    t.integer  "babinskiLeft"
    t.integer  "babinskiRight"
    t.integer  "hoffman"
    t.integer  "hoffmanLeft"
    t.integer  "hoffmanRight"
    t.integer  "nosePoint"
    t.integer  "nosePointLeft"
    t.integer  "nosePointRight"
    t.integer  "heelToKnee"
    t.integer  "heelToKneeLeft"
    t.integer  "heelToKneeRight"
    t.integer  "spellMotion"
    t.integer  "spellMotionLeft"
    t.integer  "spellMotionRight"
    t.integer  "gaitNat"
    t.integer  "gaitNatScale"
    t.string   "gaitNatWords"
    t.integer  "gaitSer"
    t.integer  "gaitSerScale"
    t.string   "gaitSerWords"
    t.integer  "gaitCom"
    t.integer  "gaitComScale"
    t.string   "gaitComWords"
    t.integer  "poseReflect"
    t.integer  "poseReflectScale"
    t.string   "poseReflectWords"
    t.integer  "poseFormer"
    t.integer  "poseFormerScale"
    t.string   "poseFormerWords"
    t.integer  "bedPressure"
    t.integer  "bedPressureHigh"
    t.integer  "bedPressureLow"
    t.integer  "chairPressure"
    t.integer  "chairPressureHigh"
    t.integer  "chairPressureLow"
    t.integer  "upPressure"
    t.integer  "upPressureHigh"
    t.integer  "upPressureLow"
    t.text     "extraNervousText"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.boolean  "gender"
    t.integer  "age"
    t.string   "work"
    t.string   "education"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "idnumber"
    t.integer  "doctor_id"
  end

  add_index "patients", ["doctor_id"], name: "index_patients_on_doctor_id"

end
