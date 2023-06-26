# frozen_string_literal: true

class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  devise :database_authenticatable,
    :validatable,
    :jwt_authenticatable,
    jwt_revocation_strategy: self

  enum role: { admin: 1, staff: 2 }
  before_validation :set_jti, on: :create

  private

  def set_jti
    self.jti = SecureRandom.uuid
  end
end
