class UserTask < ApplicationRecord

  validates_presence_of :description, :due

end
