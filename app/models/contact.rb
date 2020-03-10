class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  # This will make sure your email is valid
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

  def friendly_updated_at
    updated_at.strftime("%A, %b %d, %Y at:%l:%M %p")
  end

  def full_name
    return "#{first_name} #{middle_name} #{last_name}"
  end
end
