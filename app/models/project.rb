class Project < ActiveRecord::Base
  attr_accessible :description, :end, :name, :start

  VALID_DATE_REGEX = /\d\d-\d\d-\d\d\d\d/

  validates :name, presence: true, length: { maximum: 200 }, uniqueness: true
  validates :description, presence: true
  validates :start, presence: true #, format: { with: VALID_DATE_REGEX }
  validates :end, presence: true #, format: { with: VALID_DATE_REGEX }
end
