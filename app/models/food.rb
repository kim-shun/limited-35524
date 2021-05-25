class Food < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ラーメン' },
    { id: 3, name: '寿司' },
    { id: 4, name: '焼肉' },
    { id: 5, name: 'うどん' },
    { id: 6, name: '和食' },
    { id: 7, name: 'ファミリーレストラン' },
    { id: 8, name: '高級フレンチ' },
    { id: 9, name: 'パン' },
    { id: 10, name: 'アボカド' }
  ]

  include ActiveHash::Associations
  has_many :questions
  end