class Comment < ApplicationRecord
  belongs_to :ogiri
  belongs_to :user

  validates :text, presence: true
end
