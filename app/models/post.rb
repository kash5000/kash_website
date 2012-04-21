class Post < ActiveRecord::Base
  attr_accessible :collaborator_id, :content

  belongs_to :collaborator
  belongs_to :project

  validates :content, presence: true
  validates :collaborator_id, presence: true
  validates :project_id, presence: true

  default_scope order: 'posts.created_at DESC'
end
