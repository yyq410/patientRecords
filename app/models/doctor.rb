class Doctor < ActiveRecord::Base
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}

  has_many :patients, dependent: :destroy
end
