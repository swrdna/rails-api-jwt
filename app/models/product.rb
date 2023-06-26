# frozen_string_literal: true

class Product < ApplicationRecord
  before_validation :set_code, on: :create

  private

  def set_code
    self.code = SecureRandom.hex(3)
  end
end
