class Reservation < ApplicationRecord
  belongs_to :salon,optional: true
  belongs_to :user

  validates :gender,:cut,:pama,:color,:month,:day,:hour,:minute,presence: true
end
