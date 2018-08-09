class Calendar < ApplicationRecord
  belongs_to :user
  enum status: { personal: 0, collective: 1 }
end
