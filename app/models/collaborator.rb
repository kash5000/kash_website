class Collaborator < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :posts
  has_many :links, dependent: :destroy
  has_many :projects, through: :links

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  def post_list
      Post.where("collaborator_id = ?", id)
  end
end
