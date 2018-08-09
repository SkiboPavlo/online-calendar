class Calendar < ApplicationRecord
  belongs_to :user
  has_many :events
  enum status: { personal: 0, collective: 1 }
end
