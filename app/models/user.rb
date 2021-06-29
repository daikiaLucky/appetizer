class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :age
  belongs_to_active_hash :gender
  belongs_to_active_hash :favorite_liquor

  has_many :posts
  has_many :comments
  has_many :like

  with_options presence: true do
    validates :nickname
    validates :email
    validates :password, length: { minimum: 6 }, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
    validates :age_id
    validates :gender_id
    validates :favorite_liquor_id
  end

  with_options numericality: { other_than: 1 } do
    validates :age_id
    validates :gender_id
    validates :favorite_liquor_id
  end
end
