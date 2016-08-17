class NervousSystem < ActiveRecord::Base
    belongs_to :before_history_record
    has_one :assist_check, :dependent => :destroy
end
