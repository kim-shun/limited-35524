class Hoby < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'アニメ' },
    { id: 3, name: 'ゲーム' },
    { id: 4, name: 'スキー' },
    { id: 5, name: '映画鑑賞' },
    { id: 6, name: '散歩' },
    { id: 7, name: '読書' },
    { id: 8, name: 'YouTube' },
    { id: 9, name: '筋トレ' },
    { id: 10, name: 'お絵描き' }
  ]

  include ActiveHash::Associations
  has_many :questions
  end