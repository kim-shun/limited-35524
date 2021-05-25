class Music < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '演歌' },
    { id: 3, name: 'ジャズ' },
    { id: 4, name: 'レゲエ' },
    { id: 5, name: 'クラシック' },
    { id: 6, name: 'ヒップホップ' },
    { id: 7, name: '洋楽' },
    { id: 8, name: 'K-POP' },
    { id: 9, name: 'J-POP' },
    { id: 10, name: '自然のせせらぎ' }
  ]

  include ActiveHash::Associations
  has_many :questions
  end