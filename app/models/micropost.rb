class Micropost < ActiveRecord::Base
  belongs_to :user

  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  
  validates :user_id, presence: true
  validates :content, presence: true,length: { maximum: 140 }
<<<<<<< HEAD
  mount_uploader :picture, PictureUploader
=======
  
  def favorite?(user)
     favorite_users.include?(user)
  end
>>>>>>> microposts-heroku
end
