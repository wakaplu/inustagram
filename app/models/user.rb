class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :validatable
  has_many :notes
  has_many :likes
  has_many :like_notes, through: :likes, source: :note

  validates :name, presence: true
  # deviseのvalidatableによって以下と同じバリデーションが設定されているのでコメントアウトしています
  # validates :email, presence: true, uniqueness: true
  mount_uploader :image, IconUploader

  def image_url
    image ? image : '/images/wanko.png'
  end

end
