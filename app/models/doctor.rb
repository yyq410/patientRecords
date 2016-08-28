class Doctor < ActiveRecord::Base
  attr_accessor :remember_token

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}

  has_many :patients, dependent: :destroy

  def Doctor.digest(string)
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
  end 

  def Doctor.new_token
      SecureRandom.urlsafe_base64
  end 

  def remember 
      self.remember_token = Doctor.new_token
      update_attribute(:remember_digest, Doctor.digest(remember_token))
  end 

  def authenticated?(remember_token)
      return false if remember_digest.nil?
      BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end 

  def forget
      update_attribute(:remember_digest, nil)
  end 
end
