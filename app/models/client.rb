class Client < ApplicationRecord
  has_many :client_appointments, dependent: :destroy
  has_many :appointments, through: :client_appointments

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, format: { with: /\A.+@\w+\.\w+\z/ }
  validates :phone, length: { minimum: 7 }
end
