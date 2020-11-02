class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  has_many :messages

  with_options presence: true do
    validates :name
    validates :text
    validates :category_id
    validates :genre_id
  end

  has_one_attached :image
end