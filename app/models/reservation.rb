class Reservation < ApplicationRecord
  belongs_to :salon,optional: true
  belongs_to :user
end
