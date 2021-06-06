class Comment < ApplicationRecord
  belongs_to :ogiri
  belongs_to :user
end
