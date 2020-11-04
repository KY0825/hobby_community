class Group < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :category
  belongs_to :genre

  has_many :group_users
  has_many :users, through: :group_users, dependent: :destroy
  accepts_nested_attributes_for :group_users
  has_many :messages, dependent: :destroy

  has_one_attached :image

  with_options presence: true do
    validates :name, uniqueness: true
    validates :text
    validates :category_id
    validates :genre_id
  end

  with_options numericality:{other_than: 1} do
    validates :category_id
    validates :genre_id
  end

end