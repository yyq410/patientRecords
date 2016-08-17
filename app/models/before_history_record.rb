class BeforeHistoryRecord < ActiveRecord::Base
    belongs_to :current_history_record
    has_one :nervous_system, dependent: :destroy
end
