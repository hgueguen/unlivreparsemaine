class Prospect < ApplicationRecord
  include Hashid::Rails

  validates :name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
end
