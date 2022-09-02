class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true
  validates :mobile_no, length: { is: 10 }
  validates :age, length: { in: 0..2 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :image, dependent: :destroy
end
