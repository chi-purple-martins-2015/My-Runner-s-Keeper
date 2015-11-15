class Runner < ActiveRecord::Base
  has_many :runs
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_length_of :phone_number, minimum: 10
  validates_format_of :email, :with => /@/

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
