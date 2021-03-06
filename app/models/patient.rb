class Patient < ActiveRecord::Base
  validates :name, presence: true
  validates :gender, inclusion: {:in => [true, false]}
  validates :age, presence: true
  validates :idnumber, presence: true, uniqueness: {case_sensitive: false}

  belongs_to :doctor
  has_many :current_history_records, dependent: :destroy
end
