class Office < ActiveRecord::Base
  attr_accessible :name, :doctors_attributes
  has_many :doctors
  accepts_nested_attributes_for :doctors
  validates :name, presence: true
end
