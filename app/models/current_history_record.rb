class CurrentHistoryRecord < ActiveRecord::Base
    validates :recordTime, presence: true
    validates :docName, presence:true

    belongs_to :patient
    has_one :before_history_record, dependent: :destroy
end
