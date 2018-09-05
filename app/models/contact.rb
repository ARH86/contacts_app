class Contact < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, numericality: true
  validates :email, format: { with: //}
  validates :email, uniqueness: true


  def friendly_updated_at
    created.at.strftime("%m/%d/%Y")
  end

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

  def japan_phone_number
    "+81 #{phone_number}"
  end
end
