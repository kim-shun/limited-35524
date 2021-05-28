class Question < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :philosophy
  belongs_to :color
  belongs_to :my_type
  belongs_to :like_type
  belongs_to :prefecture
  belongs_to :food
  belongs_to :hobby
  belongs_to :music
  belongs_to :angry
  belongs_to :improve
  belongs_to :user, optional: true

  with_options presence: true do
    validates :philosophy_id
    validates :color_id
    validates :my_type_id
    validates :like_type_id
    validates :prefecture_id
    validates :food_id
    validates :hobby_id
    validates :music_id
    validates :angry_id
    validates :improve_id
  end

  with_options numericality: { other_than: 1 } do
    validates :philosophy_id
    validates :color_id
    validates :my_type_id
    validates :like_type_id
    validates :prefecture_id
    validates :food_id
    validates :hobby_id
    validates :music_id
    validates :angry_id
    validates :improve_id
  end
end
