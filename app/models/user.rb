class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  devise :database_authenticatable,
    :trackable,
    :validatable,
    :jwt_authenticatable,
    jwt_revocation_strategy: self

  enum role: { admin: 1, cashier: 2 }
  before_validation :set_jti, only: :create

  private

  def set_jti
    jti = SecureRandom.uuid
  end
end
