class User < ApplicationRecord
  attr_accessor :reset_token

  validates :username, uniqueness: true, presence: true
  validates :email, presence: true, email_address: true
  validates :password_digest, presence: true
  validates :active, inclusion: { in: [true, false] }

  has_many :people
  has_many :memberships, dependent: :destroy
  has_many :groups, through: :memberships
  has_many :user_rules, dependent: :destroy
  has_many :rules, through: :user_rules

  belongs_to :role

  has_secure_password

  def create_reset_digest
    self.reset_token = User.new_token
    update_attribute(:reset_digest, User.digest(reset_token))
    update_attribute(:reset_sent_at, Time.zone.now)
  end

  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def self.new_token
    SecureRandom.urlsafe_base64
  end

  def password_reset?(token_reset)
    return false if token_reset_digest.nil?
    BCrypt::Password.new(token_reset_digest).is_password?(token_reset)
  end

  def send_password_reset_mail
    UserMailer.password_reset(self).deliver_now
  end
end
