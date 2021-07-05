class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :description
    validates :genre_id
  end

  with_options numericality: { other_than: 1 } do
    validates :genre_id
  end
end
