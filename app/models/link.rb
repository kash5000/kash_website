class Link < ActiveRecord::Base
  attr_accessible :collaborator_id
  
  belongs_to :collaborator
  belongs_to :project

  validates :collaborator_id, presence: true
  validates :project_id, presence: true
end
