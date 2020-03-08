class Contact < ApplicationRecord
  def friendly_updated_at
    updated_at.strftime("%A, %b %d, %Y at:%l:%M%p")
  end

  def full_name
    return "#{first_name} #{last_name}"
  end
end
