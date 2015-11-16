class Run < ActiveRecord::Base
  belongs_to :runner
  validates :distance, presence: true

end
