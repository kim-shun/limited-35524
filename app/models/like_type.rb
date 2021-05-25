class LikeType < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '賢い' },
    { id: 3, name: '面白い' },
    { id: 4, name: '優しい' },
    { id: 5, name: '可愛い' },
    { id: 6, name: 'かっこいい' },
    { id: 7, name: '綺麗' },
    { id: 8, name: '芸術性がある' },
    { id: 9, name: '目立つ特徴がない' },
    { id: 10, name: 'コミュニケーション能力が高い' }
  ]

  include ActiveHash::Associations
  has_many :questions
  end