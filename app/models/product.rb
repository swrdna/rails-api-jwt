class Product < ApplicationRecord
  before_validation :set_code, only: :create

  private

  def set_code
    code = SecureRandom.hex(3)
  end
end
