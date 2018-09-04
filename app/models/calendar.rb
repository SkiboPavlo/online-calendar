class Calendar < ApplicationRecord
  belongs_to :user
  has_many :events
  enum status: { personal: 0, collective: 1 }

  def collective_status
    self.status = 1
    save
  end

  def personal_status
    self.status = 0
    save
  end
end
