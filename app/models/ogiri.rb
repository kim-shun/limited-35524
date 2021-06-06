class Ogiri < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :first_text
  belongs_to :second_text
  belongs_to :user
  has_many :comments

  with_options presence: true do
    validates :first_text_id
    validates :second_text_id
    validates :text
  end

  with_options numericality: { other_than: 1, message: 'を選択してください。'} do
    validates :first_text_id
    validates :second_text_id
  end
end
