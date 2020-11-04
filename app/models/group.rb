class Group < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :category
  belongs_to :genre

  has_many :group_users
  has_many :users, through: :group_users
  has_many :messages

  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :text
    validates :category_id
    validates :genre_id
  end

  with_options numericality:{other_than: 1} do
    validates :category_id
    validates :genre_id
  end

end