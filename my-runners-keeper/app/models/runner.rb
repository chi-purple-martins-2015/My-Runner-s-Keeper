class Runner < ActiveRecord::Base
  has_many :runs
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, length: { minimum: 10 }
  validates :email, format: { with: /@/, message: "Sorry, that is not a proper email address." }

  has_secure_password

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
