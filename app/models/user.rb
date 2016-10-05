class User < ApplicationRecord
  has_many :appointments
  has_many :doctors, :through => :appointments

  validates :password, length: { in: 8..72 }, on: :create

  validates :email,
  presence: true,
  uniqueness: {case_sensitive: false}

  has_secure_password

  def self.authenticate(params)
    User.find_by_email(params[:email]).try(:authenticate, params[:password])
  end

end
