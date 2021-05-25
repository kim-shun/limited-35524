class Angry < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '悪口を言われる' },
    { id: 3, name: 'お金を失う' },
    { id: 4, name: '頑張りを評価してくれない' },
    { id: 5, name: '政治問題' },
    { id: 6, name: '浮気をされた' },
    { id: 7, name: '他人の不祥事' },
    { id: 8, name: '大怪我をする' },
    { id: 9, name: '人に生意気な態度をされる' },
    { id: 10, name: '何が起きても怒らない' }
  ]

  include ActiveHash::Associations
  has_many :questions
  end