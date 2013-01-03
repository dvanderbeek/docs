class Doctor < ActiveRecord::Base
  belongs_to :office
  attr_accessible :name
  validates :name, presence: true
end
