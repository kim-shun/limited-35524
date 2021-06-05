class FirstText < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'こんな' },
    { id: 3, name: 'ものすごい' },
    { id: 4, name: '「' },
    { id: 5, name: '世界で1番' },
    { id: 6, name: '10' },
    { id: 7, name: 'みんなで' },
    { id: 8, name: 'カレーを' },
    { id: 9, name: 'すべからく' },
    { id: 10, name: 'セクシーな' },
    { id: 11, name: '埼玉の' },
    { id: 12, name: 'マズイ' },
    { id: 13, name: 'なぜか' },
    { id: 14, name: '大胆な' },
    { id: 15, name: 'カッコイイ' },
    { id: 16, name: 'メルヘンチックな' }
  ]

  include ActiveHash::Associations
  has_many :ogiris
  end