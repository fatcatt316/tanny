class Appointment < ApplicationRecord
  belongs_to :address
  has_many :client_appointments, dependent: :destroy
  has_many :clients, through: :client_appointments

  validates :starts_at, presence: true

  before_validation :set_ends_at

  private def set_ends_at
    return unless starts_at
    self.ends_at ||= starts_at + 20.minutes
  end
end
